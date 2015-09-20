library(flora)
library(tpl)

#' @get /tpl
get.tpl <- function(taxon) {
  tpl.get(taxon)
}

#' @get /flora
get.flora <- function(taxon) {
  get.taxa(taxon)
}
