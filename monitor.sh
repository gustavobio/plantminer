#!/bin/bash
ps aux | grep [j]umpstart > /dev/null
if [ $? -ne 0 ]; then
  Rscript /srv/shiny-server/plantminer/jumpstart.R
fi