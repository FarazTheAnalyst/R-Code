# create & visualize data
# create data frame
df <- data.frame(x=1:15,
                 y=c(3, 14, 23, 25, 23, 15, 9, 5, 9, 13, 17, 24, 32, 36, 46))

# create a scatterplot of x vs. y
plot(df$x, df$y, pch=10, xlab="x", ylab = "y")

# fit polynomial regression models up to degree 5
fit1 <- lm(y~x, data=df)
fit1
fit2 <- lm(y~poly(x, 2, raw=TRUE), data=df)
fit2
fit3 <- lm(y~poly(x, 3, raw = TRUE), data=df)
fit3
fit4 <- lm(y~poly(x, 4, raw=TRUE), data=df)
fit4
fit5 <- lm(y~poly(x, 5, raw=TRUE), data=df)
fit5

# create a scatterplot of x vs. y
plot(df$x, df$y, pch=19, xlab="x", ylab="y")

# define x-axis values
x_axis <- seq(1, 15, length=15)
x_axis

# add curve of each model to plot
lines(x_axis, predict(fit1, data.frame(x=x_axis)), col="green")
lines(x_axis, predict(fit2, data.frame(x=x_axis)), col="red")
lines(x_axis, predict(fit3, data.frame(x=x_axis)), col="purple")
lines(x_axis, predict(fit4, data.frame(x=x_axis)), col="blue")
lines(x_axis, predict(fit5, data.frame(x=x_axis)), col="orange")

# calculated adjusted R-squared of each model
summary(fit1)$adj.r.squared
summary(fit2)$adj.r.squared
summary(fit3)$adj.r.squared
summary(fit4)$adj.r.squared
summary(fit4)$adj.r.squared

# visualize the final curve
# create a scatterplot of x vs. y
plot(df$x, df$y, pch=19, xlab="x", ylab="y")

# define x-axis values
x_axis <- seq(1, 15, length=15)

# add curve of fourth-degree model
lines(x_axis, predict(fit4, data.frame(x_axis)), col="skyblue")

# get the summary of fit4
summary(fit4)


































