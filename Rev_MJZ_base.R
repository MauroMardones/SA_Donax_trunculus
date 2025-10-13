# Revisión de código base MJZ ----

# Working directories ----
# Set model and figure paths using `here::here()` for reproducibility
dir <- here::here("basecase")       # Scenario 2.5 (MLS fixed) (current MLS)

## Run base case ----
r4ss::run(
  dir = dir,
  exe = "../executable/ss3", #"../executable/ss3_opt_osx_arm64",
  skipfinished = FALSE,
  show_in_console = TRUE# change to true to watch the output go past
)


#dir3<-here("s3")
base.model3 <- r4ss::SS_output(dir=dir,
                         covar=T,
                         forecast=T)


# # create directory plots
# dir_plots<-dir.create("plots/s3", recursive = TRUE)
# remove directory plots 
dir_to_remove <- "plots/basecase"

# Ejecutar el comando para borrar la carpeta "plots"
system(paste("rm -r", shQuote(dir_to_remove)))

# Create the standard ss3 plots ----
r4ss::SS_plots(replist = base.model3, dir = "plots",
               printfolder = "basecase",showpost = FALSE)



R0 <- base.model3$estimated_non_dev_parameters["SR_LN(R0)", "Value"]
convergency<-base.model3$maximum_gradient_component
like<-base.model3$likelihoods_used

run_cpue<-ss3diags::SSplotRunstest(base.model3,subplots = "cpue")
jaba_cpue<-ss3diags::SSplotJABBAres(base.model3,subplots = "cpue")
run_age<-ss3diags::SSplotRunstest(base.model3,subplots = "len")
jaba_age<-ss3diags::SSplotJABBAres(base.model3,subplots = "len")

# 
# # data_origin <-dat0 
# dat1 <- r4ss::SS_read(dir = dir)
# 
# dat<-dat1
# 
# 
# 
# 
# 
# lc <- dat$dat$lencomp
# 
# is_len <- grepl("^l\\d+(?:\\.\\d+)?$", names(lc))
# len_val <- suppressWarnings(as.numeric(sub("^l", "", names(lc))))
# 
# over4_cols <- names(lc)[is_len & !is.na(len_val) & len_val > 4]
# 
# # Si no existe l4, créala con ceros
# if (!"l4" %in% names(lc)) lc[["l4"]] <- 0
# 
# # Acumular en l4
# if (length(over4_cols)) {
#   lc[["l4"]] <- lc[["l4"]] + rowSums(lc[, over4_cols, drop = FALSE], na.rm = TRUE)
#   lc[, over4_cols] <- NULL
# }
# 
# dat$dat$lencomp <- lc
# 
# # 1) Detectar columnas de longitudes (l0.2, l1, l4, l4.1, etc.)
# len_cols <- grep("^l\\d+(?:\\.\\d+)?$", names(lc), value = TRUE)
# 
# # 2) Extraer los valores numéricos de los nombres (e.g., "l4.2" -> 4.2; "l1" -> 1)
# lbin_vec <- as.numeric(sub("^l", "", len_cols))
# 
# # 3) Asignar al objeto SS3
# dat$dat$lbin_vector <- lbin_vec
# dat$dat$N_lbins<-length(dat$dat$lbin_vector)
# 
# 
# 
# r4ss::SS_writedat(data_origin$dat, paste0(dir,"/data.ss"), overwrite =TRUE, verbose = TRUE)
# 
# 
