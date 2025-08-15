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
eu_data <- load_euvar()
head(eu_data)
