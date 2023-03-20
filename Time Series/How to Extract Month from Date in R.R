# Method 1: Extract Month from Date Using format()
# create data frame
df <- data.frame(date=c("01/01/2021", "01/04/2021" , "01/09/2021"),
                 sales=c(34, 36, 44))

# view data frame
df

# create new variable that contains month
df$month <- format(as.Date(df$date, format = "%d/%m/%Y"),"%B" )

# view updated data frame
df

# create data frame
df <- data.frame(date=c("2021-01-01", "2021-01-04" , "2021-01-09"),
                 sales=c(34, 36, 44))

# view data frame
df

# create new variable that contains month
df$month <- format(as.Date(df$date, format = "%Y-%m-%d"), "%m")

# view updated data frame
df

# Method 2: Extract Month from Date Using Lubridate
library("lubridate")

# create data frame
df <- data.frame(date=c("01/01/2021", "01/04/2021" , "01/09/2021"),
                 sales=c(34, 36, 44))

# view data frame
df

# create new variable that contains month
df$month <- month(mdy(df$date))

# create data frame
df <- data.frame(date=c("2021-01-01", "2021-01-04" , "2021-01-09"),
                 sales=c(34, 36, 44))

# view data frame
df

# create new varaible that contains month
df$month <- month(ymd(df$date))

# view updated data frame
df


















