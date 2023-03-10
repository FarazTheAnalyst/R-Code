# Example 1: Predict Using a Simple Linear Regression Model
# create data
df <- data.frame(x=c(3, 4, 4, 5, 5, 6, 7, 8, 11, 12),
                 y=c(22, 24, 24, 25, 25, 27, 29, 31, 32, 36))

# fit simple linear regression model
model <- lm(y ~ x, data = df)

# define new observation
new <- data.frame(x=c(5))

# use the fitted model to predict the value for the new observation
predict(model, newdata = new)

# Example 2: Predict Using a Multiple Linear Regression Model
# create data
df <- data.frame(x1=c(3, 4, 4, 5, 5, 6, 7, 8, 11, 12),
                 x2=c(6, 6, 7, 7, 8, 9, 11, 13, 14, 14),
                 y=c(22, 24, 24, 25, 25, 27, 29, 31, 32, 36))

# fit multiple linear regression model
model <- lm(y ~ x1 + x2, data = df)

# define the new observation
new <- data.frame(x1 = c(5),
                  x2 = c(10))

# use the fitted model to predict the value for the new observation
predict(model, newdata = new)

# Potential Errors with Predicting New Values
# The most common error you may run into when attempting to predict
# a new value is when the dataset you used to fit the regression 
# model does not have the same column names as the new observation 
# you're attempting to predict.

# create data
df <- data.frame(x1=c(3, 4, 4, 5, 5, 6, 7, 8, 11, 12),
                 x2=c(6, 6, 7, 7, 8, 9, 11, 13, 14, 14),
                 y=c(22, 24, 24, 25, 25, 27, 29, 31, 32, 36))

# fit multiple linear regression model
model <- lm(y ~ x1 + x2, data = df)

# define new observation 
new <- data.frame(x_1=c(5),
                  x_2 = c(10))

# use the fitted model to predict the value for the new observation
# this will through an error
predict(model, newdata = new)






















