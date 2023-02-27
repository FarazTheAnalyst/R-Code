# create some fake data
data <- data.frame(x=c(1, 1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 11, 11),
                   y=c(13, 14, 17, 12, 23, 24, 25, 25, 24, 28, 32, 33, 35, 40, 41))

# create scatter plot of data
plot(data$x, data$y)

# fit a simple linear regression model
model <- lm(y~x, data = data)

# add the fitted regression line to the scatter plot
abline(model)

# define range of a values
newx <- seq(min(data$x), max(data$x), by = 1)
newx

# find 95% confidence interval for the range of x values
conf_interval <- predict(model, newdata = data.frame(x=newx), 
                         interval="confidence", level=0.95)
conf_interval

# create scatterplot of values with regression line 
plot(data$x, data$y)
abline(model)

# add dashed lines (lty=2) for the 95% confidence interval
lines(newx, conf_interval[, 2], col="blue", lty=2)
lines(newx, conf_interval[, 3], col="blue", lty=2)

# adding the prediction interval line
# define range of x values
newx <- seq(min(data$x), max(data$y), by = 1)

# find 95% prediction interval for the range of x values
pred_interval <- predict(model, newdata = data.frame(x=newx), interval = "prediction",
                         level=0.95)

# view pred_interval
pred_interval

# create scatterplot of values with regression line
plot(data$x, data$y)
abline(model)

# add dashed lines (lty=2) for the 95% conficence interval 
lines(newx, pred_interval[, 2], col="red", lty=2)
lines(newx, pred_interval[, 3], col="red", lty=2)

# adding title, axes names, shape of the individual points
plot(data$x, data$y,
     main = "Scatterplot of x vs. y", #add title
     pch=16, #specify points to be filled in
     xlab='x', #change x-axis name
     ylab='y')

abline(model, col="steelblue")  #specify color of regression line







