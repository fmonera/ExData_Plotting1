source("dataload.R")

# Read the data
dt <- read_file()

# Generate plot 3
# Note that my locale is spanish, so instead of "Thu, Fri and Sat", I get "jue, vie, sáb" which are the 
# weekdays in spanish.
png("plot3.png", width = 480, height = 480)
plot(dt$Date, dt$Sub_metering_1,xlab="", ylab="Energy sub metering", type="l", col = "black")
lines(dt$Date, dt$Sub_metering_2, col = "red")
lines(dt$Date, dt$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()
