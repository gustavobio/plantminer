require("plumber")
r <- plumb("/srv/shiny-server/plantminer/services.R")
r$run(port = 8000)