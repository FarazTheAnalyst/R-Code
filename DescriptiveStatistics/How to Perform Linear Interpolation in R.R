# define data frame
df <- data.frame(x=c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20),
                 y=c(4, 7, 11, 16, 22, 29, 38, 49, 63, 80))

# view data frame
df

# create scatterplot
plot(df$x, df$y, col="blue", pch = 19)

# suppose we'd like to find th y-value associatede with a new
# x-value of 13 we use approx()
# fit linear regression model using data frame
model <- lm(y ~ x, data = df)

# interpolate y value based on x value of 13
y_new <- approx(df$x, df$y, xout = 13)

# view interpolated y value
y_new

# create scatterplot
plot(df$x, df$y, col="blue", pch=19)

# add the predicted point to the scatter plot
points(13, y_new$y, col="red", pch=19)


