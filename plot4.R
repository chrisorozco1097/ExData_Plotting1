# WEEK 1 - PLOT 4
data1 <- read.table("/Users/christianorozco/Downloads/household_power_consumption.txt",sep = ";",header = TRUE)
data<-data1
data[,1]<-as.Date(data[,1],"%d/%m/%Y")
data$DT <- as.POSIXct(as.character(paste(data1$Date, data1$Time)), format="%d/%m/%Y %H:%M:%S")
data_time<-na.omit(data[data >= "2007-02-01" & data <= "2007-02-02",])

#PLOT 4
par(mfrow=c(2,2))
plot(data_time$DT,as.double(data_time$Global_active_power),type = 'l',xlab = '',ylab = 'Global Active Power')
plot(data_time$DT,as.double(data_time$Voltage),type = 'l',xlab = 'datetime',ylab = 'Voltage')
plot(data_time$DT,as.double(data_time$Sub_metering_1),type = 'l',xlab = '',ylab = 'Energy sub metering',col='black')
lines(data_time$DT,as.double(data_time$Sub_metering_2),type = 'l',xlab = '',ylab = 'Energy sub metering',col='red')
lines(data_time$DT,as.double(data_time$Sub_metering_3),type = 'l',xlab = '',ylab = 'Energy sub metering',col='blue')
legend("topright",inset=.01,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 1,col = c("black","red","blue"),cex=1,box.lty=0)
plot(data_time$DT,as.double(data_time$Global_reactive_power),type = 'l',xlab = 'datetime',ylab = 'Global_reactive_power',col='black')

#PLOT 4 PNG
png("plot4.png")
par(mfrow=c(2,2))
plot(data_time$DT,as.double(data_time$Global_active_power),type = 'l',xlab = '',ylab = 'Global Active Power')
plot(data_time$DT,as.double(data_time$Voltage),type = 'l',xlab = 'datetime',ylab = 'Voltage')
plot(data_time$DT,as.double(data_time$Sub_metering_1),type = 'l',xlab = '',ylab = 'Energy sub metering',col='black')
lines(data_time$DT,as.double(data_time$Sub_metering_2),type = 'l',xlab = '',ylab = 'Energy sub metering',col='red')
lines(data_time$DT,as.double(data_time$Sub_metering_3),type = 'l',xlab = '',ylab = 'Energy sub metering',col='blue')
legend("topright",inset=.02,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 1,col = c("black","red","blue"),cex=1,box.lty=0)
plot(data_time$DT,as.double(data_time$Global_reactive_power),type = 'l',xlab = 'datetime',ylab = 'Global_reactive_power',col='black')
dev.off()