# create the data
df <- data.frame(x1=c(1, 3, 3, 4, 4, 6, 6, 8, 9, 3,
                      11, 16, 16, 18, 19, 20, 23, 23, 24, 25),
                 x2=c(7, 7, 4, 29, 13, 34, 17, 19, 20, 12,
                      25, 26, 26, 26, 27, 29, 30, 31, 31, 32),
                 y=c(17, 170, 19, 194, 24, 2, 25, 29, 30, 32,
                     44, 60, 61, 63, 63, 64, 61, 67, 59, 70))

# view first six rows of data
head(df)


# perform Oridnary Least Squares Regression 
ols <- lm(y~x1+x2, data=df)

# create plot of y=values vs. standardized residuals
plot(df$y, rstandard(ols), ylab = "Standardized Residuals", xlab = "y", 
     col = "coral2", pch=16)
abline(h=0,  col="steelblue")


# perform Robust Regression 
library("MASS")

# fit robust regression model
robust <- rlm(y~x1+x2, data = df)

# To determine if this robust regression model offers a better
# fit to the data compared to the OLS model, we can calculate the
# residual standard error of each model.

# The residual standard error (RSE) is a way to measure the 
# standard deviation of the residuals in a regression model.
# The lower the value for RSE, the more closely a model is able 
# to fit the data.

# find residual standard error of ols model
summary(ols)$sigma

# find residual standard error of ols model
summary(robust)$sigma


























