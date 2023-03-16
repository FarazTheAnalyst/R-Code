# In regression analysis, Mallows' Cp is a metric that is used to pick the 
# best regression model among several potential models.

# install and load package
install.packages("olsrr")
library("olsrr")

# fit full model
full_model <- lm(mpg ~ ., data = mtcars)

# fit three smaller models
model1 <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
model2 <- lm(mpg ~ disp + qsec, data = mtcars)
model3 <- lm(mpg ~ disp + wt, data = mtcars)

# calculate Mallows' CP for each model
ols_mallows_cp(model1, full_model)
ols_mallows_cp(model2, full_model)
ols_mallows_cp(model3, full_model)
