loadData <- function() {  
  data <- read.table(
          "data.txt",
          header=TRUE,
          sep=";",
          colClasses=c("character", "character", rep("numeric",7)),
          na.strings="?")
  
  # convert time variable to Time class
  data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  
  # convert date variable to Date class
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  
  # only use data from the dates 2007-02-01 and 2007-02-02
  data <- subset(data, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))
  data
}
