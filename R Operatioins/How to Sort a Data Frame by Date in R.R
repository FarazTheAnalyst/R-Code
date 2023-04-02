# Method 1: Use order() from base R
# create and view data frame
df <- data.frame(date=c('10/30/2021', '11/18/2021', '11/13/2021', '11/19/2021'),
                 sales=c(3, 15, 14, 9))
df

# sort from least to recent to most recent
df[order(as.Date(df$date, format="%m/%d/%Y")), ]

# sort from most recent to least recent
df[rev(order(as.Date(df$date, format = "%m/%d/%Y"))), ]

# Method 2: Use lubridate and dplyr
library("lubridate")
library("dplyr")
# create and view data frame
df <- data.frame(date=c('10/30/2021', '11/18/2021', '11/13/2021', '11/19/2021'),
                 sales=c(3, 15, 14, 9))
df

# sort from least recent to most recent
df %>% arrange(mdy(df$date))

# sort from most recent to least recent
df %>% arrange(desc(mdy(df$date)))
