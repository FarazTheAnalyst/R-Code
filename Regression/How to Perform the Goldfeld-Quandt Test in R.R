# The Goldfeld-Quandt test is used to determine if heteroscedasticity
# is present in a regression model.

# fit a regression model
model <- lm(mpg~disp+hp, data = mtcars)

# view summary model
summary(model)

# load lmtest library
library("lmtest")

# perform the Goldfeld Quandt test
gqtest(model, order.by = ~disp+hp, data = mtcars, fraction = 7)
