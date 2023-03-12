# Spline regression is a type of regression that is used when there are
# points or "knots" where the pattern in the data abruptly
# Cchanges and linear regression and polynomial regression 
# aren't flexible enough to fit the data.

# create data frame
df <- data.frame(x=1:20,
                 y=c(2, 4, 7, 9, 13, 15, 19, 16, 13, 10,
                     11, 14, 15, 15, 16, 15, 17, 19, 18, 20))

# view head of data frame
head(df)

# create scatterplot
plot(df$x, df$y, cex=1.5, pch=19)


#  Fit Simple Linear Regression Model
linear_fit <- lm(df$x ~ df$y)

# view summary model
summary(linear_fit)

# create scatterplot
plot(df$x, df$y, cex=1.5, pch=19)

# add regression line to scatterplot
abline(linear_fit)

# fit Spline Regression Model
install.packages("splines")
library("splines")

# fit spline regression model
spline_fit <- lm(df$y ~ bs(df$x, knots = c(7, 10)))

# view summary of spline regression model
summary(spline_fit)

# calculate predictions using spline regressioin model
x_lim <- range(df$x)
x_grid <- seq(x_lim[1], x_lim[2])
preds <- predict(spline_fit, newdata = list(x=x_grid))

# create scatter plot with spline regression predictions
plot(df$x, df$y, cex=1.5, pch=19)
lines(x_grid, preds)





































