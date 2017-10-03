######
#
# Read canvas account_dim file into MySql
#
######


rm(list=ls()) # just clear everything
setwd("D:/canvas/unpackedFiles")

createcsv <- function(thisFile){
  myFile <- thisFile
  stub <- substr(myFile, 1, nchar(myFile)-4) # lose the .txt
  outFile <- paste("D:/canvas/unpackedFiles/csv/", stub, ".csv", sep="")
  canvasdatafile <- read.table(myFile, sep='\t', na.strings="\\N", quote='"', fill=TRUE, header = TRUE) 
  write.table(canvasdatafile, outFile, row.names = FALSE, col.names = FALSE, sep=",")
  return()
}

dimFiles <- list.files("D:/canvas/unpackedFiles", "*_dim.txt")
factFiles <- list.files("D:/canvas/unpackedFiles", "*_fact.txt")

dummy <- lapply(dimFiles, createcsv)
dummy <- lapply(factFiles, createcsv)
  
