pollutantmean <-function(directory,pollutant, id=1:332){
  filenames<-c()
  count<-1
  for (i in id) {
    filenames[count]<-paste("00", i, ".csv", sep = "")
    count<-count+1
  }
  data_files<-lapply(filenames, function(x){read.csv(file = file.path("SpecData",x),stringsAsFactors = FALSE)})
  
  x<- (mean(pollutant,na.rm = TRUE))
  print(x)
}