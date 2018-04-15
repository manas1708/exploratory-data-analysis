myfile <- "G://R//household_power_consumption.txt"
mydata <- read.table(myfile,header = T,sep = ";",stringsAsFactors = F,dec=".")
datasubset <- mydata[ mydata$Date %in% c("1/2/2007","2/2/2007"), ]
date.time <- strptime(paste(datasubset$Date, datasubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
activepower <- as.numeric(datasubset$Global_active_power)
activepower <- as.numeric(datasubset$Global_active_power)
png("plot2.png",width = 480,height = 480)
plot(date.time,activepower,type = "l", xlab = "",ylab= "Global Active Power(kilowatts)")
dev.off()
