# Example: Durbin-Watson Test in R
# load mtcars datset
data(mtcars)

# view first six rows of dataset
head(mtcars)

# fit regression model
model <- lm(mpg ~ disp + wt, data = mtcars)

# load car package
library("car")

# perofrm Durbin-watson test
durbinWatsonTest(model)
