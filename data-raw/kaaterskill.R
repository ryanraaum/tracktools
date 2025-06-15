
kaaterskill <- load_gpx(fs::path_package("extdata", "kaaterskill.gpx",
                                         package="tracktools"))
usethis::use_data(kaaterskill, overwrite = TRUE)
