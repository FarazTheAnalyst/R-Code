# Example: How to Use lapply() in R
# create data frame
df <- data.frame(x=c(1, 2, 2, 3, 5),
                 y=c(4, 4, 6, 7, 8),
                 z=c(7, 7, 9, 9, 9))

# view data frame
df


# multiply each value in each column by 2
lapply(df, function(df) df*2)

# Example: How to Use sapply() in R
# create data frame
df <- data.frame(x=c(1, 2, 2, 3, 5),
                 y=c(4, 4, 6, 7, 8),
                 z=c(7, 7, 9, 9, 9))

# view data frame
df

# multiply each value in each column by 2
sapply(df, function(df) df*2)

# multiply each value in each column by 2 and return a data frame
as.data.frame(sapply(df, function(df) df*2))
