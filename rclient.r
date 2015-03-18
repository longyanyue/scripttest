client <- function(){
  con <- socketConnection(host="localhost", port = 6012, blocking=TRUE,server=FALSE, open="r+")
  while(TRUE){
  sendme <- readline(prompt="Enter an integer: ")
  if(sendme == "quit"){
    close(con)
    break
  }
    write_resp <- writeLines(sendme, con)
    server_resp <- readLines(con, 1)
    print(paste("Your upper cased text:  ", server_resp))
    
  } 
}

client()
