setwd('/Users/hbrien/Software/JohnsHopkinsDataScience/ProgrammingInR/Project1')

pollutantmean <- function(directory, pollutant, id = 1:332) {
  newFileList <- list.files(directory, pattern="*.csv", full.names=TRUE)
  subFileList <- newFileList[id]
  ldf <- lapply(subFileList, readDataFile, pollutant)
  result <-  do.call("rbind", ldf)
  print (result)
}


readDataFile <- function (fileName, pollutant){
  dataSet1 <- read.csv(fileName)
  dataSet <- na.omit(dataSet1)
  filteredDataSet <- dataSet[,c("ID","Date",pollutant)]
  filteredDataSet
}

fileDirectory <- "/Users/hbrien/Software/JohnsHopkinsDataScience/ProgrammingInR/Project1/specdata"
cResults <- pollutantmean(fileDirectory, "nitrate", c(1:10))
cResults <- pollutantmean(fileDirectory, "nitrate", c(70:72))
cResults <- pollutantmean(fileDirectory, "nitrate", c(23:23))

