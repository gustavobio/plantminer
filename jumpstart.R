require("plumber")
r <- plumb("/srv/shiny/plantminer/services.R")
r$run(port = 8000)