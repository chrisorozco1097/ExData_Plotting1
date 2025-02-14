# WEEK 1 - PLOT 1
data1 <- read.table("/Users/christianorozco/Downloads/household_power_consumption.txt",sep = ";",header = TRUE)
data<-data1
data[,1]<-as.Date(data[,1],"%d/%m/%Y")
data$DT <- as.POSIXct(as.character(paste(data1$Date, data1$Time)), format="%d/%m/%Y %H:%M:%S")
data_time<-na.omit(data[data >= "2007-02-01" & data <= "2007-02-02",])

#PLOT 1
hist(as.double(data_time$Global_active_power),main = 'Global Active Power', breaks = 12,col = 'red',xlab = 'Global Active Power (kilowatts)')

#PLOT 1 PNG
png("plot1.png")
hist(as.double(data_time$Global_active_power),main = 'Global Active Power', breaks = 12,col = 'red',xlab = 'Global Active Power (kilowatts)')
dev.off()
