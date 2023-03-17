# A residual is the difference between an observed value and a predicted
# value in a regression model

# Example: Calculating Residual Sum of Squares in R
# view first six rows of mtcars
head(mtcars)

# build multiple linear regression model 
model <- lm(mpg ~ wt + hp, data = mtcars)

# calculate residual sum of squares (metod1)
deviance(model)

# calculate residual sum of squares (method2)
sum(resid(model)^2)

# build two different models
model1 <- lm(mpg ~ wt + hp, data = mtcars)
model2 <- lm(mpg ~ wt + disp, data = mtcars)

# calculate redsidual sum of squares for both models
deviance(model1)
deviance(model2)

# we confirm this by calculating thr R-squared of each model
# build two different models
model1 <- lm(mpg ~ wt + hp, data = mtcars)
model2 <- lm(mpg ~ wt + disp, data = mtcars)

# calculate R-squared fo both models
summary(model1)$r.squared
summary(model2)$r.squared















