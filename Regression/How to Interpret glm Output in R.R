# The glm() function in R can be used to fit generalized linear models
# Example: How to Interpret glm Output in R
# view first six rows of mtcars dataset
head(mtcars)

# fit logistic regression model
model <- glm(am ~ disp + hp, data = mtcars, family = binomial)

# view model summary
summary(model)

# Coefficients & P-Values
# The coefficient estimate in the output indicate the average change
# in the log odds of the response variable associated with a one 
# unit increase in each predictor variable.

# The standard error gives us an idea of the variability associated
# with the coefficient estimate. We then divide the coefficient
# estimate by the standard error to obtain a z value.

# The null deviance in the output tells us how well the response
# variable can be predicted by a model with only an intercept term.