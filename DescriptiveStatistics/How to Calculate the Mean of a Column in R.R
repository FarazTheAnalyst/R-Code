#create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 points=c(99, 90, 93, 86, 88, 82),
                 assists=c(33, 28, 31, 39, NA, 30))

# view data frame
df

# calculate column mean using column name
# calculate mean of "Points" column
mean(df$points)

# calculate mean using column name (ignore missing values)
# attempt to calculate mean of "assists" column
mean(df$assists)

# calculate mean of assists column and ignore missing values
mean(df$assists, na.rm = TRUE)

# calculate mean using column position
# calculate mean of column in index position 2
mean(df[, 2])

# calculate mean of all numeric columns
colMeans(df[sapply(df, is.numeric)], na.rm = TRUE)














