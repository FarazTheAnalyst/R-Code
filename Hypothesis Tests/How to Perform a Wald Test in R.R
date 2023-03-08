# EXAMPLE: wald test in R
# fit  regression model 
model <- lm(mpg ~ disp + carb + hp + cyl, data = mtcars)

# view model summary 
summary(model)

install.packages("aod")
library("aod")

# perform wald test to determine if 3rd and 4th predictor varibles are
# both zero
wald.test(Sigma = vcov(model), b=coef(model), Terms = 3:4)
