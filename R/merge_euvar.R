#' Merge EU variables into your dataset
#'
#' @param df A data.frame to merge EU variables into
#' @param vars Character vector of variable names to include
#' @return A data.frame with the selected EU variables merged
#' @export
merge_euvar <- function(df, vars = NULL) {
  euvar <- load_euvar()
  if (!is.null(vars)) euvar <- euvar[, vars, drop = FALSE]
  merge(df, euvar, all.x = TRUE)
}