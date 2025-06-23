library(dplyr)
library(tidyr)
library(ggplot2)
library(purrr)

# Datos originales
datacom <- dat1$lencomp %>% 
  filter(fleet == "1")

datacom_long <- datacom %>%
  pivot_longer(
    cols = starts_with("l"),
    names_to = "talla",
    values_to = "proporcion"
  ) %>%
  mutate(talla = as.numeric(sub("^l", "", talla)))

estructura <- datacom_long %>% 
  dplyr::select(-proporcion)
tallas <- unique(datacom_long$talla)
anos <- unique(datacom_long$year)

# Función para simular proporciones con ruido
simular_proporcion_ruido <- function(mu, sigma, tallas, ruido_sd = 0.1) {
  densidades <- dnorm(tallas, mean = mu, sd = sigma)
  ruido <- rnorm(length(tallas), mean = 1, sd = ruido_sd)
  densidades_ruido <- pmax(densidades * ruido, 0)
  proporciones <- densidades_ruido / sum(densidades_ruido)
  return(proporciones)
}

mus <- c(2.3, 2.4, 2.5, 2.6)
sigma <- 0.25

# Simulaciones por grupo y año
simulados <- map_dfr(mus, function(mu) {
  map_dfr(anos, function(ano) {
    proporciones <- simular_proporcion_ruido(mu, sigma, tallas)
    estructura %>%
      filter(year == ano) %>%
      mutate(proporcion = rep(proporciones, nrow(.) / length(tallas)),
             grupo = paste0("media_", mu),
             year = ano)
  })
})

# Añadimos un grupo para los datos originales
originales <- datacom_long %>%
  mutate(grupo = "original")

# Juntamos todo
todo <- bind_rows(originales, simulados)

# Calcular medias ponderadas para todos los grupos
medias <- todo %>%
  group_by(grupo, year) %>%
  summarise(media_talla = sum(talla * proporcion) / sum(proporcion), .groups = "drop")

# Graficar histogramas (barras) originales y simulados por año y grupo
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





# para template ss3


# Selecciona solo las columnas que existan dentro de todo
cols_to_select <- intersect(c("year", "month", "fleet", "sex", "part", "Nsamp", "talla", "proporcion", "grupo"), names(todo))

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

write.csv(datacom_wide, "Escenarios_Lenght_DT.csv")



