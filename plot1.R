pow <- read.table('power.txt',header=TRUE,sep=';',na.strings='?',stringsAsFactors = FALSE)
pow1 <- pow[(pow$Date=='1/2/2007' | pow$Date=='2/2/2007'),]

#pow$DateTime <- paste(pow$Date, pow$Time)
#pow$DateTime <- strptime(pow$DateTime, format="%d/%m/%Y %H:%M:%S")

png(filename = "plot1.png",width = 480, height = 480, units = "px")
hist(pow1$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
dev.off()