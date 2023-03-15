# we can calculate robust standard errors, which are "robust"
# Cagainst heteroscedasticity and can give us a better idea of
# the true standard error values for the regression coefficients.

# Example: Calculating Robust Standard Errors in R
# create data frame
df <- data.frame(hours=c(1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4,
                         4, 5, 5, 5, 6, 6, 7, 7, 8),
                 score=c(67, 68, 74, 70, 71, 75, 80, 70, 84, 72,
                         88, 75, 95, 75, 99, 78, 99, 65, 96, 70))

# view head of data frame
head(df)

# fit regression model
fit <- lm(score ~ hours, data = df)

# view summary of model
summary(fit)

# The easiest way to visually check if heteroscedasticity is a
# problem in the regression model is to create a residual plot:

# create residual vs. fitted plot
plot(fitted(fit), resid(fit))

# add horizontal line at y=0
abline(0, 0)

library("lmtest")
library("sandwich")

# calculate robust standard errors for model coefficients
coeftest(fit, vcov. = vcovHC(fit, type = "HC0"))























