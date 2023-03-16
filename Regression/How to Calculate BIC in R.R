# The Bayesian Information Criterion, often abbreviated BIC,
# is a metric that is used to compare the goodness of fit of 
# different regression models.

# Step 1: View the Data
# view first six rows of mtcars dataset
head(mtcars)

# Step 2: Fit Several Models
# fit three different regression models
model1 <- lm(mpg ~ disp + hp, data = mtcars)
model2 <- lm(mpg ~ disp + qsec, data = mtcars)
model3 <- lm(mpg ~ disp + wt, data = mtcars)

# Step 3: Choose Model with Lowest BIC
install.packages("flexmix")
library("flexmix")

# calculate BIC of model1
BIC(model1)

# calculate BIC of model2
BIC(model2)

# calculate BIC of model3
BIC(model3)
