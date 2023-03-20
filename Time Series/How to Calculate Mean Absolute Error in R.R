# In statistics, the mean absolute error (MAE) is a way to
# measure the accuracy of a given model.
# Example 1: Calculate Mean Absolute Error Between Two Vector
library("Metrics")
# define observed and predicted values
observed <- c(12, 13, 14, 15, 15, 22, 27, 29, 29, 30, 32)
predicted <- c(11, 13, 14, 14, 16, 19, 24, 30, 32, 36, 30)

# calculate mean abosolute error between vectors
mae(observed, predicted)

# Example 2: Calculate Mean Absolute Error for a Regression Model
library("Metrics")

# create data
df <- data.frame(x1=c(1, 3, 3, 4, 4, 6, 6, 8, 9, 3),
                 x2=c(7, 7, 4, 10, 13, 12, 17, 19, 20, 34),
                 y=c(17, 18, 19, 20, 24, 28, 25, 29, 30, 32))

# view frist six rows of data
head(df)

# fit regression model
model <- lm(y~x1+x2, data = df)

# calculate MAE between predicted values and observaed values
mae(df$y, predict(model))
