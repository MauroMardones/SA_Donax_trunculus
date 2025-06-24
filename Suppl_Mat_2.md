---
title: "Supplementary Material 2"
subtitle: "Length Composition Simulation Analysis"
author: "Mauricio Mardones"
date: "2025-06-24"
output:
  bookdown::pdf_document2:
    keep_md: true
    toc: true
    number_sections: true
---
\pagebreak



# Introduction

This document presents a simulation approach to assess variability in length composition data within the context of stock assessment using the Stock Synthesis (SS3) framework. Historical commercial length composition data is used to generate alternative distributions by introducing stochastic noise. These simulated datasets are intended to support model fitting under different assumptions.

This analysis forms part of a broader evaluation of the potential impacts of varying selectivity patterns in the wedge clam (*Donax trunculus*) fishery. Specifically, it aims to assess how different assumed or estimated mean sizes of selectivity influence key population variables, such as spawning biomass, recruitment, and exploitation rate. The study is focused on the artisanal wedge clam fishery in the Gulf of Cádiz, Spain.



# Data Reading and Preparation

We begin by reading the input files for a reference model (scenario S1):


``` r
dir1 <- here::here("s1")
start1 <- SS_readstarter(file = file.path(dir1,
                                          "starter.ss"),
                         verbose = FALSE)
dat1 <- SS_readdat(file = file.path(dir1, start1$datfile),
                   verbose = FALSE)
options(OutDec = ".")
```

## Extract Original Length Composition Data


``` r
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
```

# Simulation Methodology

We define a function to simulate length composition data using a Gaussian distribution with added stochasticity:

$$
P_i = \frac{f_i \cdot \varepsilon_i}{\sum_j f_j \cdot \varepsilon_j}, \quad f_i = \text{dnorm}(x_i; \mu, \sigma)
$$

Where:
- $P_i$ is the normalized proportion for length bin $i$.
- $f_i$ is the Gaussian density.
- $\varepsilon_i$ is multiplicative noise, $\sim \mathcal{N}(1, \sigma^2_\varepsilon)$.


``` r
simular_proporcion_ruido <- function(mu, sigma, tallas, ruido_sd = 0.1) {
  densidades <- dnorm(tallas, mean = mu, sd = sigma)
  ruido <- rnorm(length(tallas), mean = 1, sd = ruido_sd)
  densidades_ruido <- pmax(densidades * ruido, 0)
  proporciones <- densidades_ruido / sum(densidades_ruido)
  return(proporciones)
}
```

# Generate Simulated Datasets

We simulate data using several mean values ($\mu = 2.3, 2.4, 2.5, 2.6$) with a fixed standard deviation ($\sigma = 0.25$).


``` r
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
```

# Combine and Visualize

Combine simulated and original data:


``` r
originales <- datacom_long %>%
  mutate(grupo = "original")
todo <- bind_rows(originales, simulados)
```

### Compute Weighted Mean Lengths

$$
\bar{L} = \frac{\sum_i L_i P_i}{\sum_i P_i}
$$


``` r
medias <- todo %>%
  group_by(grupo, year) %>%
  summarise(media_talla = sum(talla * proporcion) / sum(proporcion), .groups = "drop")
```

### Plot Distributions


``` r
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
```

![](Suppl_Mat_2_files/figure-latex/unnamed-chunk-7-1.pdf)<!-- --> 

# Format for SS3 Input

Prepare data in wide format for Stock Synthesis:


``` r
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
```

# Export to Excel

Export each group into a separate worksheet with numeric formatting:


``` r
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
```



# Conclusion

This simulation approach allows the incorporation of uncertainty in length composition data, which can be used to test sensitivity of stock assessment models to assumptions on size structure. It can also help to test model robustness to different assumptions of central tendency and variability in input data.


