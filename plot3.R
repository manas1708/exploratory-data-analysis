myfile <- "G://R//household_power_consumption.txt"
mydata <- read.table(myfile,header = T,sep = ";",stringsAsFactors = F,dec=".")
datasubset <- mydata[ mydata$Date %in% c("1/2/2007","2/2/2007"), ]
date.time <- strptime(paste(datasubset$Date, datasubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
activepower <- as.numeric(datasubset$Global_active_power)
sub.meter1 <- as.numeric(datasubset$Sub_metering_1)
sub.meter2 <- as.numeric(datasubset$Sub_metering_2)
sub.meter3 <- as.numeric(datasubset$Sub_metering_3)
 
#plot 

png("plot3.png",width = 480,height = 480)
plot(date.time, sub.meter1, type="l", ylab="Energy Submetering", xlab="")
lines(date.time, sub.meter2, type="l", col="red")
lines(date.time, sub.meter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
