
#' Convert GPX track data frame to sf data frame
#'
#' @param gpx_track A GPX track data frame
#' @param crs EPSG coordinate reference system number (default is GPS=4326)
#'
#' @returns An sf data frame
gpx_track_to_sf <- function(gpx_track, crs=4326) {
  time <- elevation <- NULL # package check gets confused by piped variables
  sf::st_as_sf(gpx_track, coords=c("Longitude", "Latitude"), crs=crs) |>
    janitor::clean_names() |>
    dplyr::mutate(time = lubridate::as_datetime(time)) |>
    dplyr::select(elevation, time) |>
    dplyr::rename(gps_elevation = elevation)
}
