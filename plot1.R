source("dataload.R")

# Read the data
dt <- read_file()

# Generate plot 1
png("plot1.png", width = 480, height = 480)
hist(dt$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
dev.off()
