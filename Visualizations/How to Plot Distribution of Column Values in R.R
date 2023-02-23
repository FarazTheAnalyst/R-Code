# create data frame
df = data.frame(team=rep(c('A', 'B'), each=10),
                points=c(3, 3, 4, 5, 4, 7, 7, 7, 10, 11, 8,
                         7, 8, 9, 12, 12, 12, 14, 15, 17))

# view data frame
df

# plot Distribution of values using Desity plot
# plot deistribution of values in points column
plot(density(df$points))

# plot distribution of values in  points column
plot(density(df$points), col="red", main = "Density Plot of Points", xlab = "Points")

# plot Distribution of values using Histogram
# plot distribution of valurs in points volumn using histogram
hist(df$points)

# plot distribution of values in points column using histogram
hist(df$points, main = "Histogram of Points", xlab = "Points", col = "steelblue", breaks = 12)
