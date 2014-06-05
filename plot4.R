pow <- read.table('power.txt',header=TRUE,sep=';',na.strings='?',stringsAsFactors = FALSE)
pow1 <- pow[(pow$Date=='1/2/2007' | pow$Date=='2/2/2007'),]

pow1$datetime <- paste(pow1$Date, pow1$Time)
pow1$datetime <- strptime(pow1$datetime, format="%d/%m/%Y %H:%M:%S")

par(mfcol=c(2,2),cex=0.8)

plot(pow1$datetime,pow1$Global_active_power,type="l",ylab="Global Active Power",xlab="")

plot(pow1$datetime,pow1$Sub_metering_1,ylab="Energy sub metering",xlab="",type = "n")
lines(pow1$datetime,pow1$Sub_metering_1,col="black")
lines(pow1$datetime,pow1$Sub_metering_2,col="red")
lines(pow1$datetime,pow1$Sub_metering_3,col="blue")

plot(pow1$datetime,pow1$Voltage,type="l",ylab="Voltage",xlab="datetime")

plot(pow1$datetime,pow1$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")

dev.copy(png,"plot4.png")
dev.off()