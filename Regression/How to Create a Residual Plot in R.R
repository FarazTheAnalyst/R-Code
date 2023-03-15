# Residual plots are often used to assess whether or not the
# residuals in a regression analysis are normally distributed
# and whether or not they exhibit heteroscedasticity.

# load the datset
data(mtcars)

# fit a regression model
model <- lm(mpg~disp+hp, data = mtcars)

# get list of residuals
res <- resid(model)

# Produce residual vs. fitted plot.

# produce residual vs. fitted plot
plot(fitted(model), res)

# add a horizontal line at 0
abline(0, 0)

# create Q-Q plot for residuals
qqnorm(res)

# add a straight diagonal line to the  plot
qqline(res)

# produce a density plot

# create density plot of residuals
plot(density(res))




















