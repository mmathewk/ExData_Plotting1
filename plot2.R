source("readData.R")

png(filename="plot2.png",width = 480, height = 480, units = "px")

plot(tdf$DateTime, tdf$Global_active_power,type="n",
     xlab="",ylab="Global Active Power (kilowatts)")

lines(tdf$DateTime, tdf$Global_active_power)

dev.off()