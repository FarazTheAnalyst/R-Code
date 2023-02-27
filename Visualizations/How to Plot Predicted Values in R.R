# plot of predicted vs. actual values in base R

# create data
df <- data.frame(x1=c(3, 4, 4, 5, 5, 6, 7, 8, 11, 12),
                 x2=c(6, 6, 7, 7, 8, 9, 11, 13, 14, 14),
                 y=c(22, 24, 24, 25, 25, 27, 29, 31, 32, 36))

# fit multiple linear regression model
model <- lm(y ~ x1 + x2, data=df)
model
# plot predicted vs.actual values
plot(x=predict(model), y=df$y,
     xlab="Predicted Values",
     ylab = "Actual Values",
     main="Predicted vs.Actual values")

# add diagonal line for estimated regression line
abline(a=0, b=1)

# create data frame of actual and predicted values
values <- data.frame(actual=df$y, predicted=predict(model))

# view data frame
values

# plot of predicted vs. Actual valeus in  ggplot2
library("ggplot2")

# create data
df <- data.frame(x1=c(3, 4, 4, 5, 5, 6, 7, 8, 11, 12),
                 x2=c(6, 6, 7, 7, 8, 9, 11, 13, 14, 14),
                 y=c(22, 24, 24, 25, 25, 27, 29, 31, 32, 36))

# fit multiple linear regression model
model <- lm(y~ x1 + x2, data=df)

# plot predicted vs. actual values
ggplot(df, aes(x=predict(model), y=y)) +
  geom_point() +
  geom_abline(intercept = 0, slope=1) +
  labs(x="Predicte Values", y="Actual Values", title="Predicted vs. Actual Valeus")















