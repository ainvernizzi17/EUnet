#' Load EU dyadic dataset
#'
#' @return A data.frame with EU variables
#' @export
load_euvar <- function() {
  # Use `system.file()` only if needed, but here lazy data can be loaded with `data()`
  utils::data("euvar", package = "EUnet", envir = environment())
  return(euvar)
}
