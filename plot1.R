myfile <- "G://R//household_power_consumption.txt"
mydata <- read.table(myfile,header = T,sep = ";",stringsAsFactors = F,dec=".")
datasubset <- mydata[ mydata$Date %in% c("1/2/2007","2/2/2007"), ]
activepower <- as.numeric(datasubset$Global_active_power)
png("plot1.png",width = 480,height = 480)
hist(activepower,col = "red",main = "Global Active Power",xlab = "GLobal Active Power")
dev.off()
