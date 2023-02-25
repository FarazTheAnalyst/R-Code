# create one kernel density plot
# create data
data <- c(3, 3, 4, 4, 5, 6, 7, 7, 7, 8, 12, 13, 14, 17, 19, 19)

# define kernel density
kd <- density(data)

# create kernel density plot
plot(kd, main="Kernel Density Plot of Data")

# create a filled-in kernel Density Plot
# create data
data <- c(3, 3, 4, 4, 5, 6, 7, 7, 7, 8, 12, 13, 14, 17, 19, 19)

# define kernel density
kd <- density(data)

# create kernel density plot
plot(kd)

# add color
polygon(kd, col = "steelblue", border = "black")

# create multiple kernel density plots
# create datasets
data1 <- c(3, 3, 4, 4, 5, 6, 7, 7, 7, 8, 12, 13, 14, 17, 19, 19)
data2 <- c(12, 3, 14, 14, 4, 5, 6, 10, 14, 7, 7, 8, 10, 12, 17, 20)

# plot first kernel density plot
kd1 <- density(data1)
plot(kd1, col="blue", lwd=2)

# plot second kernel density plot
kd2 <- density(data2)
lines(kd2, col="red", lwd=2)














