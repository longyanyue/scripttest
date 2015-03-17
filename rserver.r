server <- function(){
  con <- socketConnection(host="localhost", port = 6012, blocking=TRUE, server=TRUE, open="r+")
  while(TRUE){
    
    writeLines("Listening...")
    data <- readLines(con, 1)
    if(length(data)==0){
      close(con)
      break
    }
    print(data)
    response <- toupper(data) 
    writeLines(response, con)  
  } 
}
server()



