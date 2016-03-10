if (!require(devtools)) {
  message("Installing devtools")
  install.packages("devtools", quiet = TRUE)
  require(devtools)
}

if (require(flora)) {
  if (packageDescription("flora")$Version != "0.2.7") {
    message("Updating flora")
    install_github("gustavobio/flora")
  }
} else {
  message("Installing flora")
  install_github("gustavobio/flora")
}

if (!require(tpl)) {
  message("Installing tpl and tpldata (this usually takes a few minutes")
  install_github("gustavobio/tpldata")
  install_github("gustavobio/tpl")
}

if (!require(shiny)) {
  message("Installing shiny")
  install.packages("shiny", quiet = TRUE)
}

if (!require(DT)) {
  message("Installing shinydashboard")
  install.packages("shinydashboard", quiet = TRUE)
}

download.file("https://raw.githubusercontent.com/gustavobio/plantminer/master/app.R", paste0(tempdir(), "app.R"))
runApp(paste0(tempdir(), "app.R"), launch.browser = TRUE)