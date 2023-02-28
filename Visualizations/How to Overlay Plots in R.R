# define datasets
x1 = c(1, 3, 6, 8, 10)
y1 = c(7, 12, 16, 19, 25)

x2 = c(1, 3, 5, 7, 10)
y2 = c(9, 15, 18, 17, 20)

x3 = c(1, 2, 3, 5, 10)
y3 = c(5, 6, 7, 15, 18)

# create line plot of x1, vs.y2
plot(x1, y1, type="l", col = "red")

# overlay line plot of x2 vs. y2
lines(x2, y2, col = "blue")

# overlay line plot of x3 vs. y3
lines(x3, y3, col = "purple")

# add legend
legend(1, 25, legend = c("Line 1", "Line 2", "Line 3"),
       col=c("red", "blue", "purple"), lty = 1)

# howt to overlay scatterplots in R

# define datasets
x1 = c(1, 3, 6, 8, 10)
y1 = c(7, 12, 16, 19, 25)

x2 = c(1, 3, 5, 7, 10)
y2 = c(9, 15, 18, 17, 20)

# create scatterplot of x1 vs. y1
plot(x1, y1, col="red", pch=19)

# overlay scatterplot of x2 vs.y2
points(x2, y1, col="chocolate", pch=19)

# add legend
legend(1, 25, legend = c("Data 1", "Data 2"), 
       col = c("red", "chocolate"), pch = c(19, 19))
























