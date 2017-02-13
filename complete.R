complete <- function(directory, id=1:332){
  tot <- as.data.frame(matrix(nrow=0,ncol=2))
  names(tot)<-c("id","nobs")
  for(i in id){
    if(i<10){
      file <- paste(getwd(),"/",directory,"/","00",i,".csv", sep="")
    }
    else{
      if(i>=10&&i<100){
        file <- paste(getwd(),"/",directory,"/","0",i,".csv", sep="")
      }
      else{
        file <- paste(getwd(),"/",directory,"/",i,".csv", sep="")
      }
    }
    data<-read.csv(file)
    sulf <- length(data[["sulfate"]])-sum(is.na(data["sulfate"]))
    
    df <- data.frame(i,sulf)
    names(df)<-c("id","nobs")
    tot <- rbind(tot,df)
  }
  print(tot)
}