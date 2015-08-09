data <- read.csv2("household_power_consumption.txt")
dt <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
dt$Global_active_power <- as.numeric(dt$Global_active_power)
hist(dt$Global_active_power/1000,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",xlim=c(0,6))
dev.copy(png,file="plot1.png")
dev.off()

