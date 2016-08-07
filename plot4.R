source("readData.R")
png(filename="plot4.png",width = 480, height = 480, units = "px")
par(mfcol=c(2,2))

plot(tdf$DateTime, tdf$Global_active_power,type="n",
     xlab="",ylab="Global Active Power")
lines(tdf$DateTime, tdf$Global_active_power)

plot(tdf$DateTime, tdf$Sub_metering_1,type="n",
     xlab="",ylab="Energy sub metering")
lines(tdf$DateTime, tdf$Sub_metering_1,col="black")
lines(tdf$DateTime, tdf$Sub_metering_2,col="red")
lines(tdf$DateTime, tdf$Sub_metering_3,col="blue")
legend("topright",legend = c("Sub_metering_1",
                             "Sub_metering_2",
                             "Sub_metering_3"),
       lty=1,col=c("black","red","blue"))


plot(tdf$DateTime, tdf$Voltage,type="n",
     xlab="datetime",ylab="Voltage")
lines(tdf$DateTime, tdf$Voltage,col="black")

plot(tdf$DateTime, tdf$Global_reactive_power,type="n",
     xlab="datetime",ylab="Global_reactive_power")
lines(tdf$DateTime, tdf$Global_reactive_power)

dev.off()