source('common.R')
data <- plotting.loaddata()

png('plot1.png', width=480, height=480)
hist(
    d[,d$Global_active_power],
    col = 'red',
    main='Global Active Power',
    xlab='Global Active Power (kilowatts)'
)
dev.off()