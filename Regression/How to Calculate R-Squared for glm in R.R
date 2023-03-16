# Example: Calculating McFadden's R-Squared in R
# install and load ISLR package
install.packages("ISLR")
library("ISLR")

# define dataset
data <- ISLR::Default

# view summary of dataset
summary(data)

# find total observation in dataset
nrow(data)

# fit logistic regression model
model <- glm(default ~ student+balance+income, family="binomial", data=data)

# view model summary
summary(model)

# calculate McFadden's R-squared for model
with(summary(model), 1 - deviance/null.deviance)

# install and load pscl package
install.packages("pscl")
library("pscl")

# calculate McFadden's R-squared for model
pR2(model)["McFadden"]
























