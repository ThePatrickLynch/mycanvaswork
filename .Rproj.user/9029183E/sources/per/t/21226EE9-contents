
#######################
# Takes csvs and loads them into tables of the same name in canvas_data
############################


setwd("D:/canvas/unpackedFiles/csv")
library("gdata", lib.loc="d:/rlibraries")
library('RMySQL')

# DB Connection
con <- dbConnect(MySQL(),
                 user="root", password="",
                 dbname="canvas_data", host="localhost")
on.exit(dbDisconnect(con))


###################################
# Functions
###################################

writetoMySQL <- function(inFile) {
  # deals with files that are small enough to be written direct to MYSQL table
  
  tblName <- substr(inFile, 1, nchar(inFile)-4) # lose the .txt
  
  # whilst testing
  qry <- paste('DELETE FROM', tblName)
  rslt <- dbGetQuery(con, qry)
  
  inFile <- substr(inFile, 1, nchar(inFile)-4) # lose the .txt
  inFile <- paste(inFile, ".csv", sep="")
  
  dbWriteTable(con, tblName, inFile, append= TRUE, row.names = F)
  
  # print a completed date time -this could be written to a table  
  fsize <- humanReadable(file.info(inFile)$size)
  print(paste(tblName, "(", fsize, ") - complete", format(Sys.time(), "%a %d-%m-%Y %X")), sep = "", quote = F)
  
  return()
}

writetough <- function(inFile) {

  # read in whole file
  
  tblName <- substr(inFile, 1, nchar(inFile)-4) # lose the txt
  this.File <- paste('d:/canvas/unpackedFiles/csv/', tblName, ".csv", sep="") 
  print(this.File)
  
  this.Table <- read.csv(this.File, header = T) 
  row.count <- nrow(this.Table)
  print(row.count)
   
  # whilst testing clear table first
  qry <- paste('DELETE FROM', tblName)
  rslt <- dbGetQuery(con, qry)
  
  this.chunk <- this.Table[1:100000,]

  dbWriteTable(con, tblName, this.chunk , append= TRUE, row.names = F)
  
  #rec.skip <- 0
  #rec.chunksize <- 10000
  #for (pass in 1:5) {
    # loop through the chunks until EOF
    # check eof ?  
    #dbWriteTable(con, tblName, this.Table, append= TRUE, row.names = F)
    #print(rec.skip)
    #rec.skip <- rec.skip + rec.chunksize 
  #}
  
  # print a completed date time -this could be written to a table  
  fsize <- humanReadable(file.info(this.File)$size)

  print(paste(tblName, "(", fsize, ") - complete", format(Sys.time(), "%a %d-%m-%Y %X")), sep = "", quote = F)

  return()
}


######################################
# Main bit
######################################

# list of files which won't just upload as too big
excl = c(  
        "file_dim.txt",
        "submission_comment_dim.txt",
        "conversation_message_dim.txt", 
        "module_item_fact.txt"
)

# write easier ones direct to MySQL database using function
# removes the big stuff
allFiles <- allFiles [! allFiles %in% excl]
rsl <- lapply(allFiles, writetoMySQL)

# now deal with the big files
awkward = c(
         "file_dim.txt" ,
         "module_item_fact.txt",
         "conversation_message_dim.txt" ,
         "submission_comment_dim.txt"
)




rslt <- writetough('file_dim.txt')

#rsl <- lapply(awkward, writetough)

# hardest
excl = c(
  "conversation_message_dim.txt" ,
  "submission_comment_dim.txt"
)


#===========================================
# WORK TO DO -
#===========================================
# 1. FIGURE OUT HOW TO WRITE EXCLUDED FILES
# 2. HOW TO WRITE ONLY UPDATES
# 3. HOW TO WRITE REQUESTS
# 4. HOW TO WRITE ONLY REQUESTS update.packageStatus()


