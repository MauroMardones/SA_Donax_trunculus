library(dplyr)
library(lubridate)
library(ggplot2)
library(ggpubr)
library(readxl)
library(janitor)
library(here)

# =========================================================
# PATHS
# =========================================================

tallas_path <- "~/IEO/FEMP_04/outputs/tallas_13_26.RDS"
cpue_path   <- "~/IEO/FEMP_04/outputs/CPUE_1726.csv"
chla_path   <- "~/IEO/FEMP_04/Data/Ambientales_Data/Clorofila_data/Medidas Clorofila a_playa.xlsx"

# =========================================================
# DATA
# =========================================================

tallas13_25 <- readRDS(tallas_path)

cpue_1726 <- read.csv(cpue_path) %>%
  mutate(Date = as.Date(Date))

ChlData <- read_excel(
  chla_path,
  sheet = "RESULTADOS_CLOROFILA",
  skip = 3
) %>%
  mutate(Fecha = as.Date(as.numeric(Fecha), origin = "1899-12-30")) %>%
  clean_names()

###
years_seq  <- seq(2013, 2023, by = 1)
year_lines <- as.Date(paste0(years_seq, "-01-01"))

# =========================================================
# RECRUITMENT ANOMALY
# =========================================================

anomalias_reclutamiento <- tallas13_25 %>%
  filter(!is.na(sizeE)) %>%
  mutate(
    Date  = as.Date(Date),
    year  = year(Date),
    month = month(Date)
  ) %>%
  filter(sizeE < 25) %>%
  dplyr::group_by(year, month) %>%
  dplyr::summarise(R = n(), .groups = "drop") %>%
  dplyr::group_by(month) %>%
  dplyr::mutate(R_mean = mean(R, na.rm = TRUE)) %>%
  ungroup() %>%
  mutate(
    anomaly = (R - R_mean) / R_mean,
    fecha   = as.Date(paste(year, month, 15, sep = "-")),
    signo   = ifelse(anomaly >= 0, "Positiva", "Negativa")
  )

recruitanom <- ggplot(
  anomalias_reclutamiento %>% filter(year <= 2023),   # FIX: <= 2023
  aes(x = fecha, y = anomaly)
) +
  geom_col(aes(fill = signo)) +
  geom_vline(xintercept = year_lines,
             colour = "grey60",
             linetype = "dashed",
             linewidth = 0.3) +
  geom_hline(yintercept = 0, linetype = 2) +
  geom_smooth(method = "loess",
              span = 0.2,
              se = FALSE,
              colour = "gray",
              linewidth = 0.5) +
  scale_fill_manual(values = c("Positiva" = "red",
                               "Negativa" = "black")) +
  scale_y_continuous(limits = c(-1, 1)) +
  theme_bw() +
  labs(x = "", y = "Juvenile proportion anomaly")

# =========================================================
# CPUE ANOMALY
# =========================================================

anomalias_cpue <- cpue_1726 %>%
  filter(!is.na(Rend1)) %>%
  mutate(
    year  = year(Date),
    month = month(Date)
  ) %>%
  dplyr::group_by(year, month) %>%
  dplyr::summarise(Rend1_mean = mean(Rend1, na.rm = TRUE),
                   .groups = "drop") %>%
  dplyr::group_by(month) %>%
  mutate(Rend1_monthly_mean = mean(Rend1_mean, na.rm = TRUE)) %>%
  ungroup() %>%
  mutate(
    anomaly = (Rend1_mean - Rend1_monthly_mean) / Rend1_monthly_mean,
    fecha   = as.Date(paste(year, month, 15, sep = "-")),
    signo   = ifelse(anomaly >= 0, "Positiva", "Negativa")
  )

cpueanom <- ggplot(
  anomalias_cpue %>% filter(year <= 2023),   # FIX: <= 2023
  aes(x = fecha, y = anomaly)
) +
  geom_col(aes(fill = signo)) +
  geom_vline(xintercept = year_lines,
             colour = "grey60",
             linetype = "dashed",
             linewidth = 0.3) +
  geom_hline(yintercept = 0, linetype = 2) +
  geom_smooth(method = "loess",
              span = 0.2,
              se = FALSE,
              colour = "gray",
              linewidth = 0.5) +
  scale_fill_manual(values = c("Positiva" = "red",
                               "Negativa" = "black")) +
  scale_y_continuous(limits = c(-1, 1)) +
  theme_bw() +
  labs(x = "", y = "CPUE anomaly")

# =========================================================
# CHLOROPHYLL-A ANOMALY
# =========================================================

anomalias_chla <- ChlData %>%
  filter(!is.na(ug_l_sea_water)) %>%
  dplyr::mutate(
    year  = year(fecha),
    month = month(fecha)
  ) %>%
  dplyr::group_by(year, month) %>%
  dplyr::summarise(chla_mean = mean(ug_l_sea_water, na.rm = TRUE),
                   .groups = "drop") %>%
  dplyr::group_by(month) %>%
  mutate(chla_monthly_mean = mean(chla_mean, na.rm = TRUE)) %>%
  ungroup() %>%
  mutate(
    anomaly = (chla_mean - chla_monthly_mean) / chla_monthly_mean,
    fecha   = as.Date(paste(year, month, 15, sep = "-")),
    signo   = ifelse(anomaly >= 0, "Positiva", "Negativa")
  )

chlanom <- ggplot(
  anomalias_chla %>% filter(year <= 2023),   # FIX: <= 2023
  aes(x = fecha, y = anomaly)
) +
  geom_col(aes(fill = signo)) +
  geom_vline(xintercept = year_lines,
             colour = "grey60",
             linetype = "dashed",
             linewidth = 0.3) +
  geom_hline(yintercept = 0, linetype = 2) +
  geom_smooth(method = "loess",
              span = 0.2,
              se = FALSE,
              colour = "gray",
              linewidth = 0.5) +
  scale_fill_manual(values = c("Positiva" = "red",
                               "Negativa" = "black")) +
  scale_y_continuous(limits = c(-1, 1)) +
  theme_bw() +
  labs(x = "", y = "Chl-a anomaly")

# =========================================================
# COMMON TIME SCALE & THEME
# =========================================================

x_common <- scale_x_date(
  limits      = c(as.Date("2017-01-01"), as.Date("2023-12-31")),
  date_breaks = "1 month",
  date_labels = "%b-%Y",
  expand      = c(0, 0)   # FIX: elimina espacio vacío en extremos
)

common_theme <- theme_bw() +
  theme(
    legend.position  = "none",
    axis.text.x      = element_text(angle = 90, hjust = 1, size = 5),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
  )

recruitanom2 <- recruitanom + x_common + common_theme
cpueanom2    <- cpueanom    + x_common + common_theme
chlanom2     <- chlanom     + x_common + common_theme

# =========================================================
# FINAL FIGURE
# =========================================================

final_index <- ggarrange(
  chlanom2,
  recruitanom2,
  cpueanom2,
  ncol = 1,
  nrow = 3
)

ggsave(
  final_index,
  filename = here("Fig", "Empirical_Index.png"),
  width = 10,
  height = 6,
  dpi = 300
)
