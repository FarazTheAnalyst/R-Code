# chnage legend position using (x, y) coordinates
# create data
x <- 1:10
y1<- c(3, 6, 8, 7, 8, 9, 13, 12, 10, 10)
y2 <- c(1, 3, 3, 4, 6, 7, 8, 10, 9, 9)

# create plot with multiple lines
plot(x, y1, col="purple", type = "l", xlab="x", ylab="y")
lines(x, y2, col="red")

# add legend at x=4 & y=12
legend(4, 12, legend = c("y1", "y2"), col = c("purple", "red"), lty=1)

# change legend positioin using keywords
# create data
x <- 1:10
y1<- c(3, 6, 8, 7, 8, 9, 13, 12, 10, 10)
y2 <- c(1, 3, 3, 4, 6, 7, 8, 10, 9, 9)

# create plot with multiple lines
plot(x, y1, type = "l", col="purple", xlab = "x", ylab = "y")
lines(x, y2, col="red")

# add legend using keyword
legend("topleft", legend = c("y1", "y2"), col=c("purple", "red"), lty = 1)

# create data
x <- 1:10
y1<- c(3, 6, 8, 7, 8, 9, 13, 12, 10, 10)
y2 <- c(1, 3, 3, 4, 6, 7, 8, 10, 9, 9)

# create plot with multiple  lines
plot(x, y1, col="purple", type = "l", xlab = "x", ylab="y")
lines(x, y2, col="red")

# add legend at bottomright
legend("bottomright", legend = c("y1", "y2"), col=c("purple", "red"), lty=1)

























