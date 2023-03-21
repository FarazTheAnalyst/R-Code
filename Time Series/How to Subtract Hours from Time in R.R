# create data frame
df <- data.frame(time=as.POSIXct(c('2022-01-03 08:04:15', '2022-01-05 14:04:15',
                                   '2022-01-05 20:03:53', '2022-01-06 03:29:13',
                                   '2022-01-06 06:15:00', '2022-01-07 10:48:11'),
                                 format='%Y-%m-%d %H:%M:%OS'),
                 sales=c(130, 98, 240, 244, 174, 193))

# view data frame
df

# Example 1: Subtract Hours from Time Using Base R
# create new column that subtract 4 hours from time
df$subtract4 <- df$time - (4*3600)

# view updated data frame
df

# Example 2: Subtract Hours from Time Using lubridate Package
library("lubridate")

# view updated data frame
df
