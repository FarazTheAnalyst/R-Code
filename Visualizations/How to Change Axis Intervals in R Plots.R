# specify axis intervlas using individual values
# define data
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
y <- c(1, 3, 3, 4, 6, 7, 8, 14, 17, 15, 14, 13, 19, 22, 25)

# create scatterplot with no axis intervals
plot(x, y, col="lightblue", pch=19, xaxt="n", yaxt="n")

# modify x-axis and y-axis intervals
axis(side=1, at=c(1, 5, 10, 15))
axis(side=2, at=c(1, 12.5, 25))

# specify axis intervals using a sequence of values
# define data
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
y <- c(1, 3, 3, 4, 6, 7, 8, 14, 17, 15, 14, 13, 19, 22, 25)

# create scatterplot
plot(x, y, col="steelblue", pch=19, xaxt="n", yaxt="n")

# modify x-axis and y-axis intervals
axis(side=1, at=seq(5, 15, by=5))
axis(side=2, at=seq(0, 25, by=5))

# specify axis intervals using a range of values
# define data
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
y <- c(1, 3, 3, 4, 6, 7, 8, 14, 17, 15, 14, 13, 19, 22, 25)

# create scatterplot
# plot scatterplot
plot(x, y, col="lightblue", pch=19, xaxt="n")

# modify x-axis interval
axis(side=1, at=1:15)
























