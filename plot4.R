source('common.R')
data <- plotting.loaddata()

png('plot4.png', width=480, height=480)
par(mfrow=c(2,2))

x <- strptime(paste(d[,d$Date], d[,d$Time]), '%d/%m/%Y %H:%M:%S')

#Phase 1 - Global Active Power
y <- d[,d$Global_active_power]
plot(x, y, type='l', xlab="", ylab="Global Active Power (kilowatts)")

#Phase 2 - Voltage
y <- d[,d$Voltage]
plot(x, y, type='l', xlab="datetime", ylab="Voltage")


#Phase 3 - Energy submetering
y1 <- d[, data$Sub_metering_1]
y2 <- d[, data$Sub_metering_2]
y3 <- d[, data$Sub_metering_3]
plot(x, y1, type='n', xlab="", ylab="Energy sub metering")
lines(x, y1, col='black')
lines(x, y2, col='red')
lines(x, y3, col='blue')
legend(
    'topright',
    lty=c(1,1,1), lwd=c(2,2,2),
    col=c('black', 'red', 'blue'),
    legend=c('Sub metering 1', 'Sub metering 2', 'Sub metering 3'),
    bty="n"
)

#Phase 4 - Global Active Power
y <- d[,d$Global_reactive_power]
plot(x, y, type='l', xlab="datetime", ylab="Global_reactive_power")

dev.off()