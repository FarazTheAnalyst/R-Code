# This error occurs when you attempt to use a regression model
# in R to predict the response values of a new data frame,
# but the column names in the new data frame do not match the 
# column names of the data frame that you used to fit the model.

# How to Reproduce the Error
# create data frame
data <- data.frame(x=c(1, 2, 2, 3, 5, 6, 8, 9),
                   y=c(7, 8, 8, 6, 9, 8, 12, 14))

# fit linear regressioin model to data
model <- lm(y~x, data = data)

# view summary of model
summary(model)

# define new data frame
new_data <- data.frame(x1=c(4, 5, 7, 8, 9))

# attempt to predict y values for new data frame
predict(model, newdata = new_data)

# We receive an error because the data frame that we used when
# fitting the model had a predictor variable named x,
# but in the new data frame we named the predictor variable x1.

# how to fix the Error
# define new data frame
new_data <- data.frame(x=c(4, 5, 7, 8, 9))
# predict y values for new data frame
predict(model, newdata = new_data)
