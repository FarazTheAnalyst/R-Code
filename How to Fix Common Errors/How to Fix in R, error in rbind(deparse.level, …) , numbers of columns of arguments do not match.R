# This error occurs when you attempt to use the rbind()
# function in R to row-bind together two or more data
# frames that do not have the same number of columns.

# How to Reproduce the Error
# create first data frame
df1 <- data.frame(x=c(1, 4, 4, 5, 3),
                  y=c(4, 4, 2, 8, 10))

# view data frame
df1

# create second data frame
df2 <- data.frame(x=c(2, 2, 2, 5, 7),
                  y=c(3, 6, 2, 0, 0),
                  z=c(2, 7, 7, 8, 15))

# view second data frame
df2

# attempt to row_bind the two data frames together
rbind(df1, df2)

# How to Fix the Error
# Method 1: Use rbind on Common Columns
# find common column names
common <- intersect(colnames(df1), colnames(df2))
common

# row-bind only on common column names
df3 <- rbind(df1[common], df2[common])

# view result
df3

# Method 2: Use bind_rows() from dplyr

library("dplyr")

# bind together the two data frames
df3 <- bind_rows(df1, df2)

# view result
df3






















