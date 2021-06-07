# WEEK 1 - PLOT 3
data1 <- read.table("/Users/christianorozco/Downloads/household_power_consumption.txt",sep = ";",header = TRUE)
data<-data1
data[,1]<-as.Date(data[,1],"%d/%m/%Y")
data$DT <- as.POSIXct(as.character(paste(data1$Date, data1$Time)), format="%d/%m/%Y %H:%M:%S")
data_time<-na.omit(data[data >= "2007-02-01" & data <= "2007-02-02",])

#PLOT 3
plot(data_time$DT,as.double(data_time$Sub_metering_1),type = 'l',xlab = '',ylab = 'Energy sub metering',col='black')
lines(data_time$DT,as.double(data_time$Sub_metering_2),type = 'l',xlab = '',ylab = 'Energy sub metering',col='red')
lines(data_time$DT,as.double(data_time$Sub_metering_3),type = 'l',xlab = '',ylab = 'Energy sub metering',col='blue')
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 1,col = c("black","red","blue"),cex=1)

#PLOT 3 PNG
png("plot3.png")
plot(data_time$DT,as.double(data_time$Sub_metering_1),type = 'l',xlab = '',ylab = 'Energy sub metering',col='black')
lines(data_time$DT,as.double(data_time$Sub_metering_2),type = 'l',xlab = '',ylab = 'Energy sub metering',col='red')
lines(data_time$DT,as.double(data_time$Sub_metering_3),type = 'l',xlab = '',ylab = 'Energy sub metering',col='blue')
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 1,col = c("black","red","blue"),cex=1)
dev.off()