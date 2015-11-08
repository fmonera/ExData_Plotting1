library(sqldf)

read_file<- function() {
  data <- read.csv.sql("household_power_consumption.txt", "SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'", 
                       header = TRUE, sep = ";", eol="\n", colClasses = c("character", "character"))
  closeAllConnections()
  # Just one date/time field
  data$Date <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  data
}