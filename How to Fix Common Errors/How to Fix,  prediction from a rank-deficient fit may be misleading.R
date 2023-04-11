# Reason #1: Two Predictor Variables Are Perfectly Correlated
# create data frame
df <- data.frame(x1=c(1, 2, 3, 4),
                 x2=c(2, 4, 6, 8),
                 y=c(6, 10, 19, 26))

# fit multiple linear regression model
model <- lm(y~x1+x2, data = df)

# use model to make predictions
predict(model, df)

# We receive a warning message because the predictor variables
# x1 and x2 are perfectly correlated.

# Reason #2: There Are More Model Parameters Than Observations
# create data frame
df <- data.frame(x1=c(1, 2, 3, 4),
                 x2=c(3, 3, 8, 12),
                 x3=c(4, 6, 3, 11),
                 y=c(6, 10, 19, 26))

# fit  multiple linear regression model
model <- lm(y~x1*x2*x3, data = df)

# use model to make preddictions
predict(model, df)
