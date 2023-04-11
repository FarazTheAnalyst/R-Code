# This warning occurs when you fit a logistic regression model
# and the predicted probabilities of one or more observations 
# in your data frame are indistinguishable from 0 or 1

# How to Reproduce the Warning
# create data frame
df <- data.frame(y = c(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
                 x1 = c(3, 3, 4, 4, 3, 2, 5, 8, 9, 9, 9, 8, 9, 9, 9),
                 x2 = c(8, 7, 7, 6, 5, 6, 5, 2, 2, 3, 4, 3, 7, 4, 4))

# fit logistic regression model
model <- glm(y ~ x1 + x2, data=df, family = binomial)

# view model summary
summary(model)

# use fitted model to predict response values
df$y_pred = predict(model, df, type = "response")

# view updated data frame
df
