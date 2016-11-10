library(flora)
library(tpl)

#' @get /tpl
get.tpl <- function(taxon, suggestion_distance = 0.9) {
  results <- tpl.get(taxon, suggestion.distance = suggestion_distance)
  # Without this the returned json object omits fields with NAs
  results[is.na(results)] <- ""
  results
}

#' @get /flora
get.flora <- function(taxon, suggestion_distance = 0.9) {
  results <- get.taxa(taxon, suggestion.distance = suggestion_distance)
  results[is.na(results)] <- ""
  results
}

#' @get /old
#' @html
get.old <- function(taxon) {
  taxon <- trim(gsub("/", " ", taxon))
  results <- tpl.get(taxon)
  results <- results[c("family", "genus", "species", "authorship", "source",
                       "id", "taxonomic.status.in.tpl", "confidence.level", "name", "source")]
  paste(results, collapse = "|")
}
