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
rec.chunksize <- 10       # number of records in each chunk



i <- 1

for (i in 1:100){
  # Read next chunk
  rec.skip <- rec.skip + rec.chunksize + 1
  thisoutFile <- capture.output(cat(outFile, i, ".csv"))    # new file for each chunk
  canvasrequest <- read.table(myFile, sep='\t', na.strings="\\N", quote='"', fill=TRUE, skip=rec.skip, nrows=rec.chunksize) 
  
  #colnames(canvasrequest) = c("timestamp", "user_id", "course_id", "quiz_id", "discussion_id", "conversation_id", 
  #                        "assignment_id", "url", "user_agent", "remote_ip","interaction_micros", "web_application_controller", 
  #                        "web_applicaiton_action", "web_application_context_type","real_user_id")
  
#  canvasrequest <- canvasrequest[ -c(remove)] # strip unwanted
  write.table(canvasrequest, thisoutFile, sep=",", row_names = FALSE, col.names = FALSE, append = TRUE)

}






