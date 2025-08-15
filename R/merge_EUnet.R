#' Merge EU variables into your dataset
#'
#' @param df A data.frame to merge EU variables into
#' @param vars Character vector of variable names to include
#' @return A data.frame with the selected EU variables merged
#' @export
merge_EUnet <- function(df, vars = NULL) {
  EUnet <- load_EUnet()
  if (!is.null(vars)) EUnet <- EUnet[, vars, drop = FALSE]
  merge(df, EUnet, all.x = TRUE)
}
