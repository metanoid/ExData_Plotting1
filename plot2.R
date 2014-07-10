load("power.RData")
png("plot2.png")
plot(power$Datetime, power$Global_active_power, type = "l", xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()
