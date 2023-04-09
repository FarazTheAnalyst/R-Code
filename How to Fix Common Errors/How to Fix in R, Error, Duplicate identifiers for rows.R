# This error occurs when you attempt to use the spread()
# function to spread the values in one or more columns 
# in a data frame into their own columns.

# However, an error can occur if there is no unique ID for 
# each row so there is no way to determine which values
# belong with which observations when performing the spread.

# Example: How to Fix the Error
# create data frame
df <- data.frame(player=rep(c('A', 'B'), each=4),
                 year=rep(1:4, times=2),
                 assists=c(4, 10, 4, 4, 3, 7, 7, 6),
                 points=c(14, 6, 18, 7, 22, 9, 38, 4))

# view data frame
df

library("tidyr")

# spread the values in the points and assists columns
pivot_wider(data=df,
            id_cols = year,
            names_from = player,
            values_from = c("assists", "points"))
            