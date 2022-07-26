png(file="C:/Users/prb/Documents/R Programming/plot3.png",
    width=480, height=480)
plot(SHP_data$Time, SHP_data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(SHP_data$Time,SHP_data$Sub_metering_2,col="red")
lines(SHP_data$Time,SHP_data$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
dev.off()