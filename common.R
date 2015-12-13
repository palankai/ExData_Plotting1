# Common operations
# In order to fast data process the 'data.table' package is used.
library(data.table)

plotting.loaddata<- function() {
    d <- fread(
        'household_power_consumption.txt', header=TRUE, na.strings='?'
    )
    # Since there is no special requirement of subsetting
    # simple string comparison would be the fastest way
    d[d$Date %in% c('1/2/2007', '2/2/2007'),]
}