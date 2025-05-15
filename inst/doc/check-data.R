## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(squirrels)

## ----example-check_plus_in_primary_fur_color----------------------------------

check_plus_in_primary_fur_color(primary_fur_color = c("Black", "Black+Cinnamon", "Cinnamon", NA))


## ----example-check_coordinates------------------------------------------------
both_valid_latitude <- c(40.766, 40.799)
both_valid_longitude <- c(-73.96, -73.95)
both_invalid_latitude <- c(30, 32)
both_invalid_longitude <- c(-100, -99)
one_invalid_latitude <- c(40.766, 50)
one_invalid_longitude <- c(-73.95, -100)

check_coordinates(
  latitude = both_valid_latitude,
  longitude = both_valid_longitude
)

check_coordinates(
  latitude = both_invalid_latitude,
  longitude = both_invalid_longitude
)

check_coordinates(
  latitude = one_invalid_latitude,
  longitude = one_invalid_longitude
)

