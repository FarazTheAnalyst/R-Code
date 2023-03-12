# Piecewise regression is a regression method we often use when there are clear
# "breakpoints" in a dataset.

# create the data
# view DataFrame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16),
                 y=c(2, 4, 5, 6, 8, 10, 12, 13, 15, 19, 24, 28, 31, 34, 39, 44))

# view first six rows of data frame
head(df)

# visualize the data
# create scatterplot of x vs. y
plot(df$x, df$y, pch = 16, col="steelblue")

# fit the piecewise Regression Model
# fit simple linear regression model
install.packages("segmented")
library("segmented")

fit <- lm(y ~ x, data = df)

# fit piecewise regression model to original model estimating a breakpoint
# at x=9
segmented.fit <- segmented(fit, seg.z=~x, psi=9)

# view summary of segmented model
summary(segmented.fit)

# visualize the final pieciwise Regression Model
# plot original data
plot(df$x, df$y, pch=16, col="steelblue")

# add segmented regression model
plot(segmented.fit, add = T)





















