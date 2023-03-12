# Polynomial regression is a regression technique we use when the
# relationship between a predictor variable and a response variable
# is nonlinear.

# define data
x <- runif(50, 5, 15)
y <- 0.1*x^3 -0.5 * x^2 - x + 5 + rnorm(length(x), 0, 10)

# plot x vs. y
plot(x, y, pch=16, cex=1.5)

# fit polynomial regression model
fit <- lm(y ~ x + I(x^2) + I(x^3))

# use model to get predicted values
pred <- predict(fit)
ix <- sort(x, index.return=T)$ix

# add polynomial curve to plot
lines(x[ix], pred[ix], col="red", lwd=2)

# define data
x <- runif(50, 5, 15)
y <- 0.1*x^3 - 0.5 * x^2 - x + 5 + rnorm(length(x), 0, 10)

# plot x vs. y
plot(x, y, pch=16, cex=1.5)

# fit polynomial regressio model
fit <- lm(y ~ x + I(x^2) + I(x^3))

# use model to get predicted values
pred <- predict(fit)
ix <- sort(x, index.return=T)$ix

# add polynomial curve to plot
lines(x[ix], pred[ix], col="red", lwd=2)

# get model coefficients
coeff <- round(fit$coefficients , 2)

# add fitted model equation to plot
text(9, 200 , paste("Model: ", coeff[1], " + ", coeff[2],
                    "*x", "+", coeff[3], "*x^2", "+", coeff[4], "*x^3"), cex=1.3)









