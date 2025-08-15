#' Load EU dyadic dataset
#'
#' @return A data.frame with EU variables
#' @export
load_euvar <- function() {
  system.file("extdata", "euvar.rds.xz", package = "EUnet") %>%
    readRDS()
}