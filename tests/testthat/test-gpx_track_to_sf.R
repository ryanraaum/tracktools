
test_that("gpx_track_to_sf works", {
  kaaterskill_sf <- expect_no_error(gpx_track_to_sf(kaaterskill$tracks[[1]]))
  expect_true(inherits(kaaterskill_sf, "sf"))
})
