# R/merge_utils.R

#' EU Dyadic Membership Dataset (1980–2024)
#' Yearly dyadic information for European country pairs, including EU/NATO/OSCE/
#' Schengen/Eurozone/EEA/EFTA memberships and dyad-level indicators.
#'
#' @format A data frame with ~6,350,016 rows and ~40 variables, including:
#' \describe{
#'   \item{year}{Integer year}
#'   \item{country.a, country.b}{Country names}
#'   \item{iso2c.a, iso3c.a, iso3n.a}{ISO codes for country A}
#'   \item{iso2c.b, iso3c.b, iso3n.b}{ISO codes for country B}
#'   \item{geoneighb}{1 if geographic neighbors, else 0}
#'   \item{benelux.*, eu.*, nato.*, osce.*, coe.*, schengen.*, euro.*, eea.*, efta.*}{Membership indicators for A, B, and dyad}
#' }
#' @usage data(euvar)
#' @source Compiled by Alessia Invernizzi
#' @keywords datasets


#' Load EU dyadic dataset
#'
#' @return A data.frame containing EU, NATO, OSCE, Schengen, Eurozone, EEA, and EFTA variables.
#' @export
load_euvar <- function() {
  url <- "https://github.com/ainvernizzi17/EUnet.git"
  temp <- tempfile(fileext = ".rds.xz")
  download.file(url, temp, mode = "wb")
  df <- readRDS(temp)
  unlink(temp)
  return(df)
}

#' Merge EU variables into a user dataset
#'
#' @param user_df Data.frame containing columns `country.a`, `country.b`, `year`.
#' @param vars Vector of variable names from EU dataset to merge.
#' @return Original data.frame with selected EU variables merged by dyad/year.
#' @export
merge_euvar <- function(user_df, vars = NULL) {
  eu_df <- load_euvar()
  if (!is.null(vars)) {
    vars <- intersect(vars, colnames(eu_df))
    eu_df <- eu_df[, c("country.a", "country.b", "year", vars)]
  }
  merged <- merge(user_df, eu_df, by = c("country.a", "country.b", "year"), all.x = TRUE)
  return(merged)
}

