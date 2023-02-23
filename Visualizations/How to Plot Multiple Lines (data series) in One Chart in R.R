# using base R matplot()
# create a fake dataset with 3 columns (ncol=3) composed of randomly generated 
# numbers form a uniform distribution with minimum = 1 and maximum = 10
data <- matrix(runif(30, 1, 10), ncol = 3)

# view matrix
data

# plot the three coluns of the dataset as three lines and add a legend in 
# the top right corner of the chart
matplot(data, type = "b", pch = 1, col = 1:3)
legend("topright", legend = 1:3, col = 1:3, pch = 1)

# using points() and lines()
# generate an x-axis along with three data series
x <- c(1, 2, 3, 4, 5, 6)
y1 <- c(2, 4, 7, 9, 12, 19)
y2 <- c(1, 5, 9, 8, 9, 13)
y3 <- c(3, 6, 12, 14, 17, 15)

# plot the first data series using plot()
plot(x, y1, type = "o", col="blue", pch="o", ylab = "y", lty=1)

# add second data series to the same chart using pointss() and lines()
points(x, y2, col="red", pch="*")
lines(x, y2, col="red", lty=2)

# add third data series to the same chart using points() and lines()
points(x, y3, col="dark red", pch="+" )
lines(x, y3, col="dark red", pch="+", lty = 3)

# add a legend in top left conrner of chart at (x, y) coordinates = (1, 19)
legend(1, 19, legend = c("y1", "y2", "y3"), col = c("blue", "red", "black"), 
       pch = c("o", "*", "+"), lty = c(1, 2, 3), ncol = 1)

# using ggplot2
if(!require(ggplot2)){install.packages(ggplot2)}

# generate fake dataset with three columns "x", "value", and "variable"
data <- data.frame(x=rep(1:5, 3), 
                   value=sample(1:100, 15),
                   variable=rep(paste0("series", 1:3), each=5))

# view dataset
head(data)
# plot all three series on the same chart using geom_line()
ggplot(data=data, aes(x=x, y=value)) +
  geom_line(aes(colour=variable))


