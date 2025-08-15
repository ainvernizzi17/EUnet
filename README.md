# EUnet

Package: EUnet
Title: EU Country Pair and Membership Data (1980–2024)
Version: 0.1.0
Authors\@R: person("Alessia", "Invernizzi", email = "[ainvernizzi@ethz.ch](mailto:ainvernizzi@ethz.ch)", role = c("aut", "cre"))

## Description

EUnet provides functions and data helpers for working with EU-related dyadic datasets from 1980 to 2024. It includes membership information for EU, NATO, OSCE, Schengen, Eurozone, EEA, and EFTA.

## Installation

You can install the package directly from GitHub:

# install.packages("devtools")

devtools::install\_github("ainvernizzi17/EUnet")

## Usage

Load the package and dataset:

library(EUnet)
eu\_data <- load\_euvar()
head(eu\_data)

Merge selected variables into your own dataset:

merged\_df <- merge\_euvar(df, vars = c("eu.a", "nato.a"))

## License

MIT + file LICENSE
