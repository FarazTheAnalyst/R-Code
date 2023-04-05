# if_else() Verifies that Both Alternatives Have the Same Type
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(22, 20, 28, 14, 13, 18, 27, 33))

# view data frame
df

# create new column based on values in team column
df$city <- ifelse(df$team == "A", "Atlanta", 0)

# view updated data frame
df

library("dplyr")

# attempt to create new column based on values i team column
df$city <- if_else(df$team == "A", "Atlanta", 0)

# Example 2: if_else() Does Not Convert Date Objects to Numeric
# create data frame
df <- data.frame(date=as.Date(c('2022-01-05', '2022-01-17', '2022-01-22',
                                '2022-01-23', '2022-01-29', '2022-02-13')),
                 sales=c(22, 35, 24, 20, 16, 19))

# veiw data frame
df

# If we use the ifelse() function from base R to modify the values
# in the date column, the values will automatically get converted
# to numeric

# if date is before 2022-01-20 then add 5 days
df$date <- ifelse(df$date < "2022-01-20", df$date+5, df$date)

library(dplyr)

# However, if we use the if_else() function from dplyr,
# the date objects will remain as dates:

# if date is before 2022-01-20 then add 5 days
df$date <- ifelse(df$date < '2022-01-20', df$date+5, df$date)

# Example 3: if_else() Offers a 'missing' Argument to Specify 
# How to Handle NA Values

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', NA, 'B'),
                 points=c(22, 20, 28, 14, 13, 18, 27, 33))

# view data frame
df

# If we use the ifelse() function from base R to create a new column, 
# there is no default option to specify how to handle NA values:
# Create new column based on values in team column
df$city <- ifelse(df$team == "A", "Atlanta", "Boston")

# view updated data frame
df

# However, if we use the if_else() function from dplyr then we can use
# the missing argument to specify how to handle NA values:
library("dplyr")

# create new column based on values in team column
df$city <- if_else(df$team == "A", "Atlanta", "Boston", missing = "other")

# view updated data frame
df








