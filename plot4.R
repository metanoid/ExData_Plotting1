load("power.RData")
png("plot4.png")
par(mfrow = c(2,2))
plot(power$Datetime, power$Global_active_power, type = "l", xlab = "",ylab = "Global Active Power (kilowatts)")
plot(power$Datetime, power$Voltage, type = "l", xlab = "datetime",ylab = "Voltage")
plot(power$Datetime, power$Sub_metering_1, type = "s", xlab = "",ylab = "Energy sub metering")
lines(power$Datetime, power$Sub_metering_2,type = "s", col = "red")
lines(power$Datetime, power$Sub_metering_3,type = "s", col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,1,1),col = c("black","red","blue"), bty = "n")
plot(power$Datetime, power$Global_reactive_power, type = "l", xlab = "datetime",ylab = "Global_reactive_power")
dev.off()
