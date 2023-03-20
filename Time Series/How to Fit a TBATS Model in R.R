# Example: How to Fit a TBATS Model in R
# view USAccDeaths dataset
USAccDeaths
install.packages("forecast")
library("forecast")

# fit TBATS model
fit <- tbats(USAccDeaths)

# use model to make predictions
predict <- predict(fit)

# view predictions
predict

# plot the predicted values
plot(forecast(fit))
