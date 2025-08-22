###Test Package/ Examples

devtools::install_github("ainvernizzi17/EUnet")
library(EUnet,
        dplyr,
        tidyverse)

##TO-DO: Change data - to longitudinal Eurobarometer Data!
#Select Test Dataset
ZA8822_v1_0_0 <- read_dta("test/FlashEurobarometer2024_EUcrisismanagement/ZA8822_v1-0-0.dta")
> View(ZA8822_v1_0_0)


testdf <- ZA8822_v1_0_0 %>% 
  dplyr::select(serialid,
                ipscntry,
                country,
                isocntry,
                d1,
                q1_1
                                          )