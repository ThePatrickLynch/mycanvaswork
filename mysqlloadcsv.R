
setwd("D:/canvas/unpackedFiles/csv")

library('RMySQL')

con <- dbConnect(MySQL(),
                 user="root", password="",
                 dbname="canvas_data", host="localhost")


on.exit(dbDisconnect(con))


writetoMySQL <- function(inFile) {
    tblName <- substr(inFile, 1, nchar(inFile)-4) # lose the .txt
    
    # whilst testing
    qry <- paste('DELETE FROM', tblName)
    rsl <- dbGetQuery(con, qry)
    
    inFile <- substr(inFile, 1, nchar(inFile)-4) # lose the .txt
    inFile <- paste(inFile, ".csv", sep="")
    
    dbWriteTable(con, tblName, inFile, append= TRUE, row.names = F)
    
    this.time <- format(Sys.time(), "a %b %d %Y %X")

  return()
}

# remove ones which won't just upload
excl = c("conversation_message_dim.txt",
         "file_dim.txt", 
         "group_dim.txt", 
         "module_completion_requirement_dim.txt",
         "module_dim.txt",
         "module_item_dim.txt",
         "module_prerequisite_dim.txt",
         "module_progression_completion_requirement_dim.txt",
         "module_progression_dim.txt",
         "score_dim"
         )

allFiles <- allFiles [! allFiles %in% excl]


rsl <- lapply(allFiles, writetoMySQL)




#dbWriteTable(con, 'conversation_message_dim.csv', name = "conversation_message_dim", append= TRUE, row.names = F)


#===========================================
# WORK TO DO -
#===========================================
# 1. FIGURE OUT HOW TO WRITE EXCLUDED FILES
# 2. HOW TO WRITE ONLY UPDATES
# 3. HOW TO WRITE REQUESTS
# 4. HOW TO WRITE ONLY REQUESTS update.packageStatus()


