# A box-cox transformation is a commonly used method for transforming
# a non-normally distributed dataset into a more normally 
# distributed one.
# Example: Box-Cox Transformation in R
library("MASS")

# create data
y=c(1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 6, 7, 8)
x=c(7, 7, 8, 3, 2, 4, 4, 6, 6, 7, 5, 3, 3, 5, 8)

# fit linear regression model
model <- lm(y~x)
bc <- boxcox(y~x)
(lambda <- bc$x[which.max(bc$y)])

# fit new linear regression model using the Box-Cox transformation
new_model <- lm(((y^lambda-1)/lambda) ~ x)

# define plotting area
op <- par(pty = "s", mfrow = c(1, 2))

# Q-Q plot for original model
qqnorm(model$residuals)
qqline(model$residuals)

# Q-Q plot for Box-cox transformed mdoel
qqnorm(new_model$residuals)
qqline(new_model$residuals)

# display both Q-Q plots
par(op)
