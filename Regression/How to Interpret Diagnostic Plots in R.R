# Linear regression models are used to describe the relationship
# between one or more predictor variables and a response variable.
# However, once we've fit a regression model it's a good idea 
# to also produce diagnostic plots to analyze the residuals
# of the model and make sure that a linear model is
# appropriate to use for the particular data we're working with.

# Create & Interpret Diagnostic Plots in R
# create data frame
df <- data.frame(hours=c(1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 4, 5, 5, 6),
                 score=c(67, 65, 68, 77, 73, 79, 81, 88, 80, 67, 84, 93, 90, 91)) 

# fit linear regression model
model = lm(score ~ hours, data = df)

# produce diagnostic plots for regression model
plot(model)

# 