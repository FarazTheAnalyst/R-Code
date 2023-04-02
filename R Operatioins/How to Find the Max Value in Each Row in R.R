# Example: Find the Max Value in Each Row in R
# create data frame
df <- data.frame(points=c(4, NA, 10, 2, 15, NA, 7, 22),
                 rebounds=c(NA, 3, 9, 7, 6, 8, 14, 10),
                 assists=c(10, 9, 4, 4, 3, 7, 10, 11))

# view data frame
df

# add new column that contains max value in each row
df$max <- apply(df, 1, max, na.rm=TRUE)

# view updated data frame
df
