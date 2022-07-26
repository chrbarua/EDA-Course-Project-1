png(file="C:/Users/prb/Documents/R Programming/plot4.png",
    width=480, height=480)

par(mfrow=c(2,2))


plot(SHP_data$Time,SHP_data$Global_active_power, type="l", xlab="", ylab="Global Active Power")

plot(SHP_data$Time,SHP_data$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(SHP_data$Time, SHP_data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(SHP_data$Time,SHP_data$Sub_metering_2,col="red")
lines(SHP_data$Time,SHP_data$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n")

plot(SHP_data$Time,SHP_data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()