pow <- read.table('power.txt',header=TRUE,sep=';',na.strings='?',stringsAsFactors = FALSE)
pow1 <- pow[(pow$Date=='1/2/2007' | pow$Date=='2/2/2007'),]

pow1$datetime <- paste(pow1$Date, pow1$Time)
pow1$datetime <- strptime(pow1$datetime, format="%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png",width = 480, height = 480, units = "px")
plot(pow1$datetime,pow1$Global_active_power,type="l",ylab="Global Active Power (kilowatts)")
dev.off()