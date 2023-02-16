# calculate 10% trimmed mean
# define data
data = c(22, 25, 29, 11, 14, 18, 13, 13, 17, 11, 8, 8, 7, 12, 15, 6, 8, 7, 9, 12)

# calculate 10% trimmed mean
mean(data, trim = 0.1)

# calculate trimmed mean of column in data frame
# create data frame
df = data.frame(points=c(25, 12, 15, 14, 19, 23, 25, 29),
                assists=c(5, 7, 7, 9, 12, 9, 9, 4),
                rebounds=c(11, 8, 10, 6, 6, 5, 9, 12))

# calculate 5% trimmed mean of points
mean(df$points, trim = 0.05)

# calculate trimmed mean of multiple columns
# create data frame
df = data.frame(points=c(25, 12, 15, 14, 19, 23, 25, 29),
                assists=c(5, 7, 7, 9, 12, 9, 9, 4),
                rebounds=c(11, 8, 10, 6, 6, 5, 9, 12))

# calculate 5% trimmed mean of points and assists
sapply(df[c("points", "assists")], function(x) mean(x, trim=0.05))













