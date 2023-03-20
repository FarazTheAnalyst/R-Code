# A naive forecast is one in which the forecast for a given
# period is simply equal to the value observed in the previous period.

# enter the data
# create vector to hold actual sales data
actual <- c(34, 37, 44, 47, 48, 48, 46, 43, 32, 27, 26, 24)

# generate the naive forecasts
# generate naive forecasts
forecast <- c(NA, actual[-length(actual)])

# measure the accuracy of the forecasts

# calculate MAPE
mean(abs((actual - forecast)/actual), na.rm = T) * 100

# calcualte MAE
mean(abs(actual-forecast), na.rm=T)

# visualize the forecasts
# plot actual sales
plot(actual, type = "l", col="red", main = "Actual vs. Forecasted Sales",
     xlab = "Sales Period", ylab = "Sales")

# add line for forecasted sales
lines(forecast, type = "l", col = "blue")

# add legend
legend("topright", legend=c("Actual", "Forecasted"),
       col=c("red", "blue"), lty = 1)
