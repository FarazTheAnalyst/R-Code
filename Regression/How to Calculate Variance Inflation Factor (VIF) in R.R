# how to calculate VIF in R
# view first six lines of mtcars
head(mtcars)

# fit the regression model
model <- lm(mpg ~ disp + hp + wt + drat, data = mtcars)

# view the ouput of the regression model
summary(model)

# load the car library
library("car")

# calculate the VIF for each predictor variable in the model
vif(model)

# visualizing VIF values
# create vecto of VIF values
vif_values <- vif(model)

# create horizontal bar chart to display each VIF value
barplot(vif_values, main = "VIF vALUES", horiz = TRUE, col = "steelblue")

# add vertical line at 5
abline(v=5, lwd = 3, lty = 2)

# visualizing correlations between predictor variables
# define the variables we want to include in the correlation matrix
data <- mtcars[ , c("disp", "hp", "wt", "drat")]

# create correlation matrix
cor(data)























