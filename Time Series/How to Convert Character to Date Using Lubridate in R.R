# Example 1: Convert Character to Date Using ymd()
#  create data frame
df <- data.frame(date=c('2022-01-05', '2022-02-18', '2022-03-21',
                        '2022-09-15', '2022-10-30', '2022-12-25'),
                 sales=c(14, 29, 25, 23, 39, 46))

# view data frame
df

# view class of date column
class(df$date)

# load lubridate package
library("lubridate")
# convet character to date foramt
df$date <- ymd(df$date)

# veiw updated data frame
df

# view updated class of date column
class(df$date)

# Example 2: Convert Character to Date Using mdy()
# create data frame
df <- data.frame(date=c('March 4, 2022', 'April 9, 2022', 'May 6, 2022',
                        'May 29, 2022', 'June 1, 2022', 'July 2, 2022'),
                 sales=c(14, 29, 25, 23, 39, 46))

# view data frame
df

# view class of date column
class(df$date)

# convet character to date format
df$date <- mdy(df$date)

# view updated data frame
df

# view updated class of date column
class(df$date)




















