library(dplyr)
library(tidyr)
library(ggplot2)
library(purrr)
library(openxlsx)
library(here)
library(r4ss)
library(openxlsx)


dir1<-here("s1")# test 1
# leo archivos para plotear y hacer tablas
start1 <- SS_readstarter(file = file.path(dir1,
                                          "starter.ss"),
                         verbose = FALSE)
# note the data and control file names can vary, so are determined from the 
# starter file.
dat1 <- SS_readdat(file = file.path(dir1, start1$datfile),
                   verbose = FALSE)
# Read in ctl file. Note that the data fileR object is needed so that SS_readctl
# assumes the correct data structure

# Forzar decimales con punto en toda la sesión
options(OutDec = ".")

# --- Datos originales ---
datacom <- dat1$lencomp %>% filter(fleet == "1")

datacom_long <- datacom %>%
  pivot_longer(
    cols = starts_with("l"),
    names_to = "talla",
    values_to = "proporcion"
  ) %>%
  mutate(talla = as.numeric(sub("^l", "", talla)))

estructura <- datacom_long %>% 
  dplyr::select(-proporcion)
tallas <- sort(unique(datacom_long$talla))
anos <- unique(datacom_long$year)

# --- Función para simular proporciones con ruido ---
simular_proporcion_ruido <- function(mu, sigma, tallas, ruido_sd = 0.1) {
  densidades <- dnorm(tallas, mean = mu, sd = sigma)
  ruido <- rnorm(length(tallas), mean = 1, sd = ruido_sd)
  densidades_ruido <- pmax(densidades * ruido, 0)
  proporciones <- densidades_ruido / sum(densidades_ruido)
  return(proporciones)
}

# --- Simulaciones ---
mus <- c(2.3, 2.4, 2.5, 2.6)
sigma <- 0.25

simulados <- map_dfr(mus, function(mu) {
  map_dfr(anos, function(ano) {
    proporciones <- simular_proporcion_ruido(mu, sigma, tallas)
    estructura %>%
      filter(year == ano) %>%
      mutate(
        proporcion = rep(proporciones, nrow(.) / length(tallas)),
        grupo = paste0("media_", mu),
        year = ano
      )
  })
})

# --- Datos originales ---
originales <- datacom_long %>%
  mutate(grupo = "original")

# --- Unir todo ---
todo <- bind_rows(originales, simulados)

# --- Calcular medias ponderadas ---
medias <- todo %>%
  group_by(grupo, year) %>%
  summarise(media_talla = sum(talla * proporcion) / sum(proporcion), .groups = "drop")

# --- Graficar ---
ggplot(todo, aes(x = talla, y = proporcion)) +
  geom_col(position = "identity", alpha = 0.5, color = "black") +
  facet_grid(year ~ grupo, scales = "free_y") +
  geom_vline(data = medias, aes(xintercept = media_talla), color = "red", linetype = "dashed") +
  labs(
    title = "Distribuciones de talla: datos originales y simulados por año y grupo",
    x = "Talla",
    y = "Proporción"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

# --- Preparar datos para SS3 ---
cols_to_select <- intersect(
  c("year", "month", "fleet", "sex", "part", "Nsamp", "talla", "proporcion", "grupo"),
  names(todo)
)

datacom_wide <- todo %>%
  dplyr::select(all_of(cols_to_select)) %>%
  pivot_wider(
    id_cols = c("year", "month", "fleet", "sex", "part", "Nsamp", "grupo"),
    names_from = talla,
    names_prefix = "l",
    values_from = proporcion,
    values_fill = 0
  ) %>%
  arrange(year, month)

# --- Escribir Excel con punto decimal en todas las hojas ---


wb <- createWorkbook()

for(gr in unique(datacom_wide$grupo)) {
  df_grupo <- datacom_wide %>% filter(grupo == gr)
  
  addWorksheet(wb, sheetName = as.character(gr))
  writeData(wb, sheet = as.character(gr), df_grupo, keepNA = TRUE)
}

# Establecer formato numérico con punto decimal
number_format <- createStyle(numFmt = "0.00")

# Aplicar formato a todas las hojas y columnas numéricas
for(sheet in names(wb)) {
  df <- datacom_wide %>% filter(grupo == sheet)
  num_cols <- which(sapply(df, is.numeric))
  if(length(num_cols) > 0) {
    addStyle(
      wb, sheet = sheet, style = number_format,
      rows = 2:(nrow(df)+1), cols = num_cols,
      gridExpand = TRUE
    )
  }
}

saveWorkbook(wb, file = "data_sim_length.xlsx", overwrite = TRUE)


