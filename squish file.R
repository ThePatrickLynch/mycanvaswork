######
#
# Read canvas requests file and strip uneeded fields to reduce size
# processed in 3M chunks
#
######


rm(list=ls()) # just clear everything
setwd("D:/canvas/unpackedFiles")
myFile <- "requests.txt"
outFile <- "requestsprocessed"

remove <- c(1,3:5,8:9,16,22,24:27)
rec.skip <- 0                   # starting point
rec.chunksize <- 750000    # number of records in each chunk use 1000000 or less for Excel

i <- 1

for (i in 1:2000){
  # need to go enough times to catch whole file
  # Read next chunk

  thisoutFile <- capture.output(cat(outFile, i, ".csv"))    # new file for each chunk
  canvasrequest <- read.table(myFile, sep='\t', na.strings="\\N", quote='"', fill=TRUE, skip=rec.skip, nrows=rec.chunksize) 
  

  
  colnames(canvasrequest) = c("timestamp", "user_id", "course_id", "quiz_id", "discussion_id", "conversation_id", 
                          "assignment_id", "url", "user_agent", "remote_ip","interaction_micros", "web_application_controller", 
                          "web_applicaiton_action", "web_application_context_type", "real_user_id")
 

  canvasrequest <- canvasrequest[ -c(remove)] # strip unwanted
  
  
### timestamp is getting trashed
  
  write.table(canvasrequest, thisoutFile, sep=",", col.names = FALSE, append = TRUE)
  rec.skip <- rec.skip + rec.chunksize + 1

}






