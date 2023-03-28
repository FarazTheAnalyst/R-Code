# Method 1: Use the Paste Function from Base R
# create data frame
data <- data.frame(month=c(10, 10, 11, 11, 12),
                   year=c(2019, 2020, 2020, 2021, 2021),
                   value=c(15, 13, 13, 19, 22))

# view data frame
data

# combine year and month into one column
data$date <- paste(data$year, data$month, sep="_")

# view new data frame
data

# combine the two columns and remove the old ones
data_new <- data[c("date", "value")]

# view data 
data_new

# use the untie function from Tidyr
# load tidyr package
library(tidyr)

# create data frame
data <- data.frame(month=c(10, 10, 11, 11, 12),
                   year=c(2019, 2020, 2020, 2021, 2021),
                   value=c(15, 13, 13, 19, 22))

# conbine year and month into one column
unite(data, date, c(year, month))
