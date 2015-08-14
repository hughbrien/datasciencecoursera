complete <- function(directory, pollutant, id = 1:332) {

  ##complete <- function(directory, id = 1:332)
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases


  newFileList <- list.files(directory, pattern="*.csv", full.names=TRUE)
  subFileList <- newFileList[id]
  ldf <- lapply(subFileList, readDataFile, pollutant)
  
  meanResult
  round(meanResult, digits=3)
}

readDataFile <- function (fileName, pollutant){
  dataSet1 <- read.csv(fileName)
  dataSet <- na.omit(dataSet1)
  filteredDataSet <- dataSet[,c("ID","Date",pollutant)]
  filteredDataSet
}