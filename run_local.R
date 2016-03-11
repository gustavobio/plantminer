if (!require('devtools', quietly = TRUE)) {
  message("Installing devtools...")
  install.packages("devtools", quiet = TRUE)
  library('devtools')
}
if (require('flora', quietly = TRUE)) {
  if (packageDescription("flora")$Version != "0.2.7") {
    message("Updating flora")
    install_github("gustavobio/flora")
  }
} else {
  message("Installing flora")
  install_github("gustavobio/flora")
  library('flora')
}

if (!require('tpl', quietly = TRUE)) {
  message("Installing tpl and tpldata (this usually takes a few minutes)")
  install_github("gustavobio/tpldata")
  install_github("gustavobio/tpl")
}

if (!require('shiny', quietly = TRUE)) {
  message("Installing shiny")
  install.packages("shiny", quiet = TRUE)
  library('shiny')
}

if (!require('shinydashboard', quietly = TRUE)) {
  message("Installing shinydashboard")
  install.packages("shinydashboard", quiet = TRUE)
}

if (!require('DT', quietly = TRUE)) {
  message("Installing DT")
  install.packages("DT", quiet = TRUE)
}

download.file("https://raw.githubusercontent.com/gustavobio/plantminer/master/app.R", paste0(tempdir(), "app.R"))
runApp(paste0(tempdir(), "app.R"), launch.browser = TRUE)