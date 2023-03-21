# Method 1: Extract Year from Date Using format()
# create data frame
df <- data.frame(date=c("01/01/2021", "01/04/2021" , "01/09/2021"),
sales=c(34, 36, 44))

# view data frame
df

# create new variable that contains year
df$year <- format(as.Date(df$date, format="%d/%m/%Y"),"%Y")

# view new data frame
df

# create data frame
df <- data.frame(date=c("2021-01-01", "2021-01-04" , "2021-01-09"),
                 sales=c(34, 36, 44))

# view data frame
df

# create new variable that contains year
df$year <- format(as.Date(df$date, format = "%Y-%m-%d"), "%Y")

# view new data frame
df

# Method 2: Extract Year from Date Using Lubridate
library("lubridate")

# create data frame
df <- data.frame(date=c("01/01/2021", "01/04/2021" , "01/09/2021"),
                 sales=c(34, 36, 44))

# view data frame
df

# create new variable that contains year
df$year <- year(mdy(df$date))

# view new data frame
df

# Lubridate also works with a variety of date formats. You
# simply must specify the format:
# create data frame
df <- data.frame(date=c("2021-01-01", "2021-01-04" , "2021-01-09"),
                 sales=c(34, 36, 44))

# view data frame
df























