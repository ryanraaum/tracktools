
#' Serialize a complex object into a compressed character string
#'
#' @param object Any object
#'
#' @returns A character string
#' @export
#'
#' @examples
#' cerealize(mtcars)
cerealize <- function(object) {
  paste0(memCompress(serialize(object, NULL), "bzip2"), collapse="")
}

#' De-serialize a complex object from a compressed character string
#'
#' @param cereal A character string of a serialized object
#'
#' @returns An R object
#' @export
#'
#' @examples
#' decerealize(cerealize(mtcars))
decerealize <- function(cereal) {
  flakes_bz <- substring(cereal, seq(1,nchar(cereal),2), seq(2,nchar(cereal),2))
  flakes_raw <- flakes_bz |> strtoi(16L) |> as.raw()
  flakes <- memDecompress(flakes_raw, "bzip2")
  unserialize(as.raw(as.integer(paste0('0x', flakes))))
}
