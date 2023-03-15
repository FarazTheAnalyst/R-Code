# Example: Testing for Multicollinearity in R
# create data frame
df = data.frame(rating = c(90, 85, 82, 88, 94, 90, 76, 75, 87, 86),
                points=c(25, 20, 14, 16, 27, 20, 12, 15, 14, 19),
                assists=c(5, 7, 7, 8, 5, 7, 6, 9, 9, 5),
                rebounds=c(11, 8, 10, 6, 6, 9, 6, 10, 10, 7))

# view data frame
df

# load package
library("car")

# define multiple linear regression model
model <- lm(rating ~ points + assists + rebounds, data = df)

# calculate the VIF fro each predictor variable in the model 
vif(model)
