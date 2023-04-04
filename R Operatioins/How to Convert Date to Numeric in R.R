# Method 1: Use as.numeric()
# create date object
my_date <- as.POSIXct("10/14/2021 5:35:00 PM", format="%m/%d/%Y %H:%M:%S %p")

# view date object
my_date

# convert date object to number of seconds since 1/1/1970
as.numeric(my_date)

# convert date object to number of days since 1/1/1970
as.numeric(my_date)/86400

# convert date object to number of years since 1/1/1970
as.numeric(my_date)/86400/365

# Method 2: Use Functions from the lubridate Package
library("lubridate")

# create date object
my_date <- as.POSIXct("10/14/2021 5:35:00 PM", format = "%m/%d/%Y %H:%M:%S %p")

# view date object
my_date

# extract various numerical values from date object
secoond(my_date)

minute(my_date)

hour(my_date)

day(my_date)

month(my_date)

year(my_date)
