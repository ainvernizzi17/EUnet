#' Load EU dyadic dataset
#'
#' @return A data.frame with EU variables
#' @export
load_EUnet <- function() {
  # Use `system.file()` only if needed, but here lazy data can be loaded with `data()`
  utils::data("EUnet", package = "EUnet", envir = environment())
  return(EUnet)
}

#Error: Error in load_EUnet() : object 'EUnet' not found


#ALTERNATIVE SPECIFICATION: Loading the data in the data environment
load_EUnet <- function() {
  data_env <- new.env()
  utils::data("EUnet", package = "EUnet", envir = data_env)
  
  # Check if the object 'EUnet' was successfully loaded into the new environment
  if (!exists("EUnet", envir = data_env)) {
    warning("Dataset 'EUnet' not found in package. Returning NULL.")
    return(NULL)
  }
  
  # Return the dataset from the new environment
  return(data_env$EUnet)
}

##ALSO Doesn't work - apparently the issue is that the utils function cannot find/ access the dataset?!
