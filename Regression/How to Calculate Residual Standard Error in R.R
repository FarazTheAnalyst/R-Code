# Method 1: Analyze the Model Summary
# load built-in mtcars dataset
data(mtcars)

# fit regression model
model <- lm(mpg~disp+hp, data = mtcars)

# view model summary
summary(model)

# Method 2: Use a Simple Formula
sqrt(deviance(model)/df.residual(model))

# how to implement this formula in R
# load built-in mtcars dataset
data(mtcars)

# fit regression model
model <- lm(mpg~disp+hp, data = mtcars)

# calculate residual standard error
sqrt(deviance(model)/df.residual(model))
model

# Method 3: Use a Step-By-Step Formula
# load built-in mtcars dataset
data(mtcars)

# fit regressioin model
model <- lm(mpg~disp+hp, data = mtcars)

# calculate the number of model parameters - 1
k=length(model$coefficients)-1

# calculate sum of squared residuals
SSE = sum(model$residuals**2)

# calculate total observations in dataset
n=length(model$residuals)

# calculate residual standard error
sqrt(SSE/(n-(1+k)))















