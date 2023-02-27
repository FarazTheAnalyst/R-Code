# create scatterplot with two varables
# define datasets
x1 = c(1, 3, 6, 11, 19, 20)
y1 = c(7, 10, 11, 12, 18, 25)

x2 = c(1, 3, 8, 13, 17, 19)
y2 = c(9, 15, 18, 21, 22, 22)

#create scatterplot of x1 vs. y1
plot(x1, y1, col='red', pch=19)

#add scatterplot of x2 vs. y2
points(x2, y2, col='blue', pch=19)

#add legend
legend(1, 25, legend=c('Data 1', 'Data 2'), pch=c(19, 19), col=c('red', 'blue'))

# Customize the scatterplot
# define datasets
x1 <- c(1, 3, 6, 11, 19, 20)
y1 <- c(7, 10, 11, 12, 18, 25)

x2 <- c(1, 2, 8, 13, 17, 19)
y2 <- c(9, 15, 18, 21, 22, 22)

# create scatterplot of x1 vs.y1
plot(x1, y1, col="red", pch=19, cex=1.3,
     xlab="X", ylab="Y", main="Scatterplot of Two Variables")

# overlay scatterplot of x2 vs.y2
points(x2, y2, col="blue", pch=19, cex=1.3)

# add legend
legend(1, 25, legend = c("Data 1", "Data 2"), pch=c(19, 19), col=c("red", "blue"))

















