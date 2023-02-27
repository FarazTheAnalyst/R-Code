# fit regresssion model
# define data
df <- data.frame(x=c(1, 3, 3, 4, 5, 5, 6, 7, 8, 12),
                 y=c(12, 14, 14, 13, 17, 19, 22, 26, 24, 22))

# fit linear regression model using "x" as predictor and "y" as response variable
model <- lm(y ~ x, data = df)

# view summary of regression model
summary(model)

# view diagnostic plots of model
# create diagnostic plots
plot(model)

# plot the fitted regression model
# create scatterplot of raw data
plot(df$x, df$y, col="red", main = "Summary of Regression Model", xlab="x", ylab = "y")

# add fitted regression line
abline(model)

# use the regression model to make predictions
# define new observation
new <- data.frame(x=c(5))

# use the fitted model to predict the value for the new observation
predict(model, newdata = new)
