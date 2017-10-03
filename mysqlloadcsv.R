



rm(list=ls()) # just clear everything
setwd("D:/canvas/unpackedFiles/csv")

library('RMySQL')

con <- dbConnect(MySQL(),
                 user="root", password="",
                 dbname="canvas_data", host="localhost")

query <- ''

on.exit(dbDisconnect(con))

myFile <- read.csv('assignment_rule_dim.csv', header = F)
dbWriteTable(con, value = myFile, name = "assignment_rule_dim", append= TRUE)
