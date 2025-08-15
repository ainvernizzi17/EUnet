#' Load EU dyadic dataset
#'
#' @return A data.frame with EU variables
#' @export
load_euvar <- function() {
  system.file("data", "euvar.rds.xz", package = "EUnet") %>%
    readRDS()
}
