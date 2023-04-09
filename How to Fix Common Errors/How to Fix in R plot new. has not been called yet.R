# Example 1: How to Fix Error with lines()
# create data
df <- data.frame(x=c(1, 2, 2, 3, 5, 6, 8, 8, 9, 9, 10, 11, 12, 15, 15),
                 y=c(2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 16, 19, 28))

# fit polynomial regression model
model <- lm(y ~ poly(x, 2), data=df)

# define new sequence of x-values
new_x <- seq(min(df$x), max(df$y))
new_x

# attempt to plot fitted regression line 
lines(new_x, predict(model, newdata = data.frame(x=new_x)))

# create data
df <- data.frame(x=c(1, 2, 2, 3, 5, 6, 8, 8, 9, 9, 10, 11, 12, 15, 15),
                 y=c(2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 16, 19, 28))

# fit polynomial regression model
model <- lm(y ~ poly(x, 2), data=df)

# define new sequence of x-values
new_x <- seq(min(df$x), max(df$y))

# create scatterplot of x vs. y values
plot(y ~ x, data=df)

# attempt to plot fitted regression line
lines(new_x, predict(model, newdata = data.frame(x=new_x)))

# Example 2: How to Fix Error with abline()
# create data
df <- data.frame(x=c(1, 2, 2, 3, 5, 6, 8, 8, 9, 9, 10, 11, 12, 15, 15),
                 y=c(2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 16, 19, 28))

# attempt to add horizontal line at y=10
abline(a=10, b=0, lwd=2)

# create data
df <- data.frame(x=c(1, 2, 2, 3, 5, 6, 8, 8, 9, 9, 10, 11, 12, 15, 15),
                 y=c(2, 3, 3, 4, 5, 5, 6, 7, 8, 8, 9, 10, 16, 19, 28))

# create scatterplot of x vs. y
plot(y ~ x, data=df)

# add horizontal line at y=10
abline(a=10, b=0, lwd=2)



































