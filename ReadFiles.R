setwd('/Users/hbrien/Software/JohnsHopkinsDataScience/ProgrammingInR/Project1')

pollutantmean <- function(directory, pollutant, id = 1:332) {
  newFileList <- list.files(directory, pattern="*.csv", full.names=TRUE)
  subFileList <- newFileList[id]
  ldf <- lapply(subFileList, readDataFile, pollutant)
  result <-  do.call("rbind", ldf)
  meanResult = mean(result[[3]])
}

readDataFile <- function (fileName, pollutant){
  dataSet1 <- read.csv(fileName)
  dataSet <- na.omit(dataSet1)
  filteredDataSet <- dataSet[,c("ID","Date",pollutant)]
  filteredDataSet
}

fileDirectory <- "/Users/hbrien/Software/JohnsHopkinsDataScience/ProgrammingInR/Project1/specdata"
cResults <- pollutantmean(fileDirectory, "sulfate", c(1:10))
cResults
cResults <- pollutantmean(fileDirectory, "nitrate", c(70:72))
cResults
cResults <- pollutantmean(fileDirectory, "nitrate", c(23:23))
cResults



h <- function(x, y = NULL, d = 3L) {
  z <- cbind(x, d)
  if(!is.null(y))
    z <- z + y
  else
    z <- z + f
  g <- x + y / z
  if(d == 3L)
    return(g)
  g <- g + 10
  g
}

h(4,4)

x <- 5
print(x)

y <- if(x < 3) {
  NA
} else {
  10
}









