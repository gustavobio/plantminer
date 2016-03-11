# Plantminer
Match lists of taxa against the Brazilian Flora 2020 and The Plant List.

## Online version
http://www.plantminer.com

## Run a local version
```coffee
install.packages("devtools")
devtools::install_github("gustavobio/tpldata")
devtools::install_github("gustavobio/tpl")
devtools::install_github("gustavobio/flora")
install.packages("shiny"
install.packages("DT")
install.packages("shinydashboard")
library("shiny"
download.file("https://raw.githubusercontent.com/gustavobio/plantminer/master/app.R", paste0(tempdir(), "app.R"))
runApp(paste0(tempdir(), "app.R"), launch.browser = TRUE)
```
