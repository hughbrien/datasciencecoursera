pollutantmean <- function(directory, pollutant, id = 1:332) {
  newFileList <- list.files(directory, pattern="*.csv", full.names=TRUE)
  subFileList <- newFileList[id]
  ldf <- lapply(subFileList, readDataFile, pollutant)
  result <-  do.call("rbind", ldf)
  meanResult = mean(result[[3]])
  meanResult
  round(meanResult, digits=3)
}

readDataFile <- function (fileName, pollutant){
  dataSet1 <- read.csv(fileName)
  dataSet <- na.omit(dataSet1)
  filteredDataSet <- dataSet[,c("ID","Date",pollutant)]
  filteredDataSet
}

