client <- function(){
  con <- socketConnection(host="localhost", port = 6012, blocking=TRUE,server=FALSE, open="r+")
  while(TRUE){
    
                            
   # f <- file("stdin")
  #  open(f)
  #  print("Enter text to be upper-cased, q to quit")
  #  sendme <- readLines(f, n=1)
  #  if(tolower(sendme)=="q"){
  #    break
  #  }
  sendme <- readline(prompt="Enter an integer: ")
  sendme <- 
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
