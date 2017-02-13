pollutantmean <- function(directory, pollutant, id=1:332){
  x<- vector(length = 0)
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
      y <- data[[pollutant]]
      x<-append(x,y)
    
  }
  print(mean(x,na.rm=TRUE))
}