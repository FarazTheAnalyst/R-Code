# Example: White's Test in R
# Step 1: Fit a regression model.

# load the dataset
data(mtcars)

# fit a regression model
model <- lm(mpg~disp+hp, data=mtcars)

# view model summary
summary(model)

# Step 2: Perform White's test.
# load lmtest library
library("lmtest")

# perform White's test
bptest(model, ~ disp*hp + I(disp^2) +I(hp^2), data=mtcars)
