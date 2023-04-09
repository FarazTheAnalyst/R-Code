# How to Reproduce the Error
# create data frame
df <- data.frame(points=c(99, 97, 104, 79, 84, 88, 91, 99),
                 rebounds=c(34, 40, 41, 38, 29, 30, 22, 25),
                 blocks=c(12, 8, 8, 7, 8, 11, 6, 7))

# view data frame
df

# attempt to caluclate mean of "points" column
apply(df$points, 2, mean)

# how to fix the error
# calculate mean of every column in data frame
apply(df, 2, mean)

# calculate mean of "points" and "blocks" column in data frame
apply(df[c("points", "blocks")], 2, mean)

# calculate mean of "points" column
mean(df$points)
