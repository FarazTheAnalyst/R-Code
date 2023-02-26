# plot multiple lines on same graph
# define datat to plot
x <- 1:10
y1 <- c(2, 4, 4, 5, 7, 6, 5, 8, 12, 19)
y2 <- c(2, 2, 3, 4, 4, 6, 5, 9, 10, 13)

# plot first line 
plot(x, y1, type = "l", col="red", xlab="x", ylab="y")

# add second line to plot
lines(x, y2, col="purple")

# create multiple plots side-by side
# define data to plot
x <- 1:10
y1 <- c(2, 4, 4, 5, 7, 6, 5, 8, 12, 19)
y2 <- c(2, 2, 3, 4, 4, 6, 5, 9, 10, 13)

# define plotting area as one row and two columns
par(mfrow=c(1, 2))

# create first line
plot(x, y1, type = "l", col="red")

# create second line plot
plot(x, y2, type = "l", col="purple", ylim=c(min(y1), max(y1)))

# create multiple plots stacked vertically
# define data plot
x <- 1:10
y1 <- c(2, 4, 4, 5, 7, 6, 5, 8, 12, 19)
y2 <- c(2, 2, 3, 4, 4, 6, 5, 9, 10, 13)

# define plotting area as two rows and one column
par(mfrow=c(2, 1), mar=c(2, 4, 4, 1))

# create first line plot
plot(x, y1, type = "l", col="red")

# create second line plot
plot(x, y2, type = "l", col="purple", ylim = c(min(y1), max(y1)))
















