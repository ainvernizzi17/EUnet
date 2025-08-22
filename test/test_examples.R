###Test Package/ Examples

devtools::install_github("ainvernizzi17/EUnet")
library(EUnet,
        dplyr)

##TO-DO: Change data - to longitudinal Eurobarometer Data!
#Select Test Dataset
test_data <- readRDS("C:/Users/epaepcke/Documents/GitRepos/EUnet/test/test_data.rds")

data <- load_EUnet()
