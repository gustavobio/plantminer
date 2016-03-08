#!/bin/bash
ps aux | grep [j]umpstart > /dev/null
if [ $? -ne 0 ]; then
  Rscript /svr/shiny/plantminer/jumpstart.R
fi