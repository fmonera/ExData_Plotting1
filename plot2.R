source("dataload.R")

# Read the data
dt <- read_file()

# Generate plot 2
# Note that my locale is spanish, so instead of "Thu, Fri and Sat", I get "jue, vie, sáb" which are the 
# weekdays in spanish.
png("plot2.png", width = 480, height = 480)
plot(dt$Date, dt$Global_active_power,xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.off()
