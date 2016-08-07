source("readData.R")

png(filename="plot3.png",width = 480, height = 480, units = "px")

plot(tdf$DateTime, tdf$Sub_metering_1,type="n",
     xlab="",ylab="Energy sub metering")

lines(tdf$DateTime, tdf$Sub_metering_1,col="black")

lines(tdf$DateTime, tdf$Sub_metering_2,col="red")

lines(tdf$DateTime, tdf$Sub_metering_3,col="blue")

legend("topright",legend = c("Sub_metering_1",
                           "Sub_metering_2",
                           "Sub_metering_3"),
       lty=1,col=c("black","red","blue"))

dev.off()