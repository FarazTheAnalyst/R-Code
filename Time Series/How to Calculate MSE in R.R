# One of the most common metrics used to measure the prediction
# accuracy of a model is MSE, which stands for mean squared 
# error. It is calculated as:

# CMethod 1: Calculate MSE from Regression Model
# load mtcars dataset
data(mtcars)

# fit regression model
model <- lm(mpg~disp+hp, data = mtcars)

# get model summary
model_summ <- summary(model)

# calculate MSE
mean(model_summ$residuals^2)

# Method 2: Calculate MSE from a list of Predicted and Actual Values
# create data frame with a column of actual valeus and column of predicted values
data <- data.frame(pred=predict(model), actual=mtcars$mpg)

# view first six lines of data
head(data)

# calculate MSE
mean((data$actual - data$pred)^2)
