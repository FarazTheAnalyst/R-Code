# This warning often occurs when you attempt to fit a logistic
# regression model in R and you experience perfect separation
# - that is, a predictor variable is able to perfectly separate
# the response variable into 0's and 1's.

# How to Reproduce the Warning
# create data frame
df <- data.frame(x=c(.1, .2, .3, .4, .5, .6, .7, .8, .9, 1, 1, 1.1, 1.3, 1.5, 1.7),
                 y=c(0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1))

# attempt to fit logistic regression model
glm(y~x, data=df, family = "binomial")

# The following code shows a scenario where the predictor
# variable is not able to perfectly separate the response
# variable into 0's and 1's:

# create data frame
df <- data.frame(x=c(.1, .2, .3, .4, .5, .6, .7, .8, .9, 1, 1, 1.1, 1.3, 1.5, 1.7),
                 y=c(0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1))

# fit logistic regression model
glm(y~x, data=df, family = "binomial")

# How to Handle the Warning
# Method 1: Use penalized regression.
# One option is to use some form of penalized logistic regression
# such as lasso logistic regression or elastic-net regularization.

# Method 2: Use the predictor variable to perfectly predict
# the response variable.