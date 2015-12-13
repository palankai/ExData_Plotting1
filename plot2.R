source('common.R')
data <- plotting.loaddata()

png('plot2.png', width=480, height=480)
y <- d[,d$Global_active_power]
x <- strptime(paste(d[,d$Date], d[,d$Time]), '%d/%m/%Y %H:%M:%S')
plot(x, y, type='l', xlab="", ylab="Global Active Power (kilowatts)")
dev.off()