# calculate mean of every column
# create data frame
df <- data.frame(points=c(99, 91, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28),
                 blocks=c(1, 4, 11, 0, 2))

# calculate column means of every column
colMeans(df)

# calculate column means of every colmun & and exclude NA value
# create data frame with some NA values
df <- data.frame(points=c(99, 91, 86, 88, 95),
                 assists=c(33, NA, 31, 39, 34),
                 rebounds=c(30, 28, NA, NA, 28))

# calculate column means
colMeans(df, na.rm=TRUE)

# calculate mean of specific columns

# create data frame
df <- data.frame(points=c(99, 91, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24,24, 28),
                 blocks=c(1, 4, 11, 0, 2))

# calculate column means for "points" and "clocks" columns"
colMeans(df[c("points", "blocks")])

# calculate column means for "points" and "blocks" columns
# calculate column means for columns in positions 1 and 4
colMeans(df[c(1, 4)])














