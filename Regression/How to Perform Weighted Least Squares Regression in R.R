# One of the key assumptions of linear regression
# is that the residuals are distributed with equal 
# variance at each level of the predictor variable.
# This assumption is known as homoscedasticity

# create the data frame
df <- data.frame(hours=c(1, 1, 2, 2, 2, 3, 4, 4, 4, 5, 5, 5, 6, 6, 7, 8),
                 score=c(48, 78, 72, 70, 66, 92, 93, 75, 75, 80, 95, 97, 90, 96, 99, 99))

# fit simple linear regression model
model <- lm(score ~ hours, data = df)

# view summary of model
summary(model)

# test for Heteroscedasticity
# create residual vs. fitted plot
plot(fitted(model), resid(model), xlab = "Fitted Values", ylab = "Residuals")
abline(0, 0)

# load lmtest package
library("lmtest")

# perform Breusch-Pagan test
bptest(model)

# perform weighted least Squares Regression

# define weights to use
wt <- 1 / lm(abs(model$residuals) ~ model$fitted.values)$fitted.values^2

# perform weighted least squares regression 
wls_model <- lm(score ~ hours, data = df, weights = wt)

# view summary of model
summary(wls_model)





















