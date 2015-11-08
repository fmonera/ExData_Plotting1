source("dataload.R")

# Read the data
dt <- read_file()

# Generate plot 4
# Note that my locale is spanish, so instead of "Thu, Fri and Sat", I get "jue, vie, sáb" which are the 
# weekdays in spanish.
png("plot4.png", width = 480, height = 480)

# Divide into 4 regions
par(mfcol = c(2,2))

# Sub top left
plot(dt$Date, dt$Global_active_power,xlab="", ylab="Global Active Power (kilowatts)", type="l")

# Sub bottom left
plot(dt$Date, dt$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l", col = "black")
lines(dt$Date, dt$Sub_metering_2, col = "red")
lines(dt$Date, dt$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), lty = 1, bty = "n")

# Sub top right
plot(dt$Date, dt$Voltage, xlab="datetime", ylab="Voltage", col = "black", type="l")

# Sub bottom right
plot(dt$Date, dt$Global_reactive_power, xlab="datetime", col = "black", type="l")

dev.off()
