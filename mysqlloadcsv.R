
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
  # reads big files in bits and appends them to MySql table
  rec.skip <- 0
  rec.chunksize <- 10000

  tblName <- substr(inFile, 1, nchar(inFile)-4) # lose the txt
  this.File <- paste('d:/canvas/unpackedFiles/csv/', tblName, ".csv", sep="") 
  print(this.File)
  
  # whilst testing clear table first
  qry <- paste('DELETE FROM', tblName)
  rslt <- dbGetQuery(con, qry)

  for (pass in 1:5) {
    # loop through the chunks until EOF
    # check eof ?  
    
    this.Table <- read.table(this.File,sep=',', na.strings="NA", quote='"', fill=TRUE, skip=rec.skip, nrows=rec.chunksize, header = T) 
    #dbWriteTable(con, tblName, this.Table, append= TRUE, row.names = F)
    print(rec.skip)
    #print(rec.chunksize)
    rec.skip <- rec.skip + rec.chunksize 
  }
  
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
        "file_dim.txt" ,
         "submission_comment_dim.txt",
        "conversation_message_dim.txt", 
        "module_item_fact.txt"
)


# removes the big stuff
allFiles <- allFiles [! allFiles %in% excl]

#write easier ones direct to MySQL database using function
rsl <- lapply(allFiles, writetoMySQL)

# now deal with the big files
print('######################################')
print('           Complicated ones')
print('######################################')


# need to just drop score_fact as no table yet
excl = c(
         "file_dim.txt" ,
         "module_item_fact.txt"
)


# "conversation_message_dim.txt" ,
# "submission_comment_dim.txt",


rsl <- lapply(excl, writetough)



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


