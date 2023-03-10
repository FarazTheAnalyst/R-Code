# (1) Quantifying the relationship between one or more predictor variables and a response variable.

# (2) Using the model to predict future values.

# view first six rows of mtcars
head(mtcars)

# fit simple linear regression model
model <- lm(mpg ~ disp, data = mtcars)

# view summary of fitted model
summary(model)

# create data frame with three new calues for disp
new_disp <- data.frame(disp = c(150, 200, 250))

# use the fitted model to predict the value for mpg based on the three new
# values for disp
predict(model, newdata = new_disp)

# create prediction intervals around the predicted values
predict(model, newdata = new_disp, interval = "predict")

# create 99% predictin intervals around the predicted values
predict(model, newdata = new_disp, interval = "predict", level = 0.99)

# How to Visualize a Prediction Interval in R
# A scatterplot of the data points for disp and mpg
# A blue line for the fitted regression line
# Gray confidence bands
# Red prediction bands

# define dataset
data <- mtcars[ , c("mpg", "disp")]

# create simple linear regression model
model <- lm(mpg ~ disp, data = mtcars)

# use model to create prediction intervals
predictions <- predict(model, interval = "predict")

# create dataset that contains original data slong with prediction intervals
all_data <- cbind(data, predictions)
all_data

# load ggplot2 library
library("ggplot2")

# create plot
ggplot(all_data, aes(x = disp, y = mpg)) + #define x and y axis variables
  geom_point() + # add scatterplots
  stat_smooth(method = lm) + #confidence bands
  geom_line(aes(y = lwr), col="coral2", linetype = "dashed") + #lwr predicted interval
  geom_line(aes(y = upr), col = "coral2", linetype = "dashed") #upr pred interval













