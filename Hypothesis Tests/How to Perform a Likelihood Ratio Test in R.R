# A likelihood ratio test compares the goodness of fit of two
# nested regression models.

# install and load packages
install.packages("lmtest")
library("lmtest")

# fit the full model
model_full <- lm(mpg ~ disp + carb + hp + cyl, data = mtcars)

# fit reduced model
model_reduced <- lm(mpg ~ disp + carb, data = mtcars)

# perform likelihood ratio test for differences in models
lrtest(model_full, model_reduced)

# We could then carry out another likelihood ratio test to 
# determine if a model with only one predictor variable is 
# significantly different from a model with the two predictors:

# fit full model
model_full <- lm(mpg ~ disp + carb, data = mtcars)

model_reduced <- lm(mpg ~ disp, data = mtcars)

# perform likelihood ratio test for differences in models
lrtest(model_full, model_reduced)
