source("loadData.R")

plot2 <- function() {
  data <- loadData()
  png("plot2.png", width=480, height=480)
  plot(
    data$Time, 
    data$Global_active_power,
    type="l",
    xlab="",
    ylab="Global Active Power (kilowatts)"
  )
  dev.off()
}