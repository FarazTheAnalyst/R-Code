# Example: How to Interpret Pr(>|z|) Values
# fit logistic regressioin model
model <- glm(am ~ disp + drat, data = mtcars, family = binomial)

# view model summary
summary(model)

# The p-value for the predictor variable "disp" is .5305. 
# Since this value is not less than .05, it does not have a 
# statistically significant relationship with the response 
# variable in the model.
# The p-value for the predictor variable "drat" is .0315. Since 
# this value is less than .05, it has a statistically significant
# relationship with the response variable in the model

# The significance codes under the coefficient table tell us
# that a single asterisk (*) next to the p-value of .0315 means
# the p-value is statistically significant at ?? = .05

# Step 1: Calculate the z value
# z value = Estimate /std.Error

# calculate z-value
4.79396 / 2.2681158

# calculate the p-value
# Next, we calculate the two-tailed p-value. This represents
# the probability that the absolute value of the normal 
# distribution is greater than 2.151 or less than -2.151.

# We can use the following formula in R to calculate this value:
# p-value = 2 * (1-pnorm(z value))

# caclulate p-value
2*(1-pnorm(2.151))
























