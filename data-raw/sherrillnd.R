
sherrillnd <- load_gpx(fs::path_package("extdata", "sherrillnd.gpx",
                                         package="tracktools"))
usethis::use_data(sherrillnd, overwrite = TRUE)
