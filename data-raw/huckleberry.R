
huckleberry <- load_gpx(fs::path_package("extdata", "huckleberry.gpx",
                                         package="tracktools"))
usethis::use_data(huckleberry, overwrite = TRUE)
