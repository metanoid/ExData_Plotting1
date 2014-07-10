power <- read.table("household_power_consumption.txt", header = TRUE, nrows = 2075259, sep = ";")
power$Datetime = strptime(paste(power$Date,power$Time), "%d/%m/%Y %H:%M:%S")
power = power[power$Datetime >= as.POSIXct("2007-02-01") & power$Datetime < as.POSIXct("2007-02-03"),]
power[,3:8] = sapply(power[,3:8],function(x){as.numeric(levels(x))[x]})
save(power,file = "power.RData")
