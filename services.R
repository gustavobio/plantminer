library(flora)
library(tpl)

#' @get /tpl
get.tpl <- function(taxon) {
  results <- tpl.get(taxon)
  # Without this the returned json object omits fields with NAs
  results[is.na(results)] <- ""
  results
}

#' @get /flora
get.flora <- function(taxon) {
  results <- get.taxa(taxon)
  results[is.na(results)] <- ""
  results
}
