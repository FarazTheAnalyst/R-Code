# create data frame
df <- data.frame(hours=c(1, 2, 4, 5, 5, 6, 6, 7, 8, 10, 11, 11, 12, 12, 14),
                 score=c(64, 66, 76, 73, 74, 81, 83, 82, 80, 88, 84, 82, 91, 93, 89))

# fit linear regression model
fit <- lm(score~hours, data = df)

# view model summary
summary(fit)

# calculate confidence interval for regression coefficient for "hours"
confint(fit, "hours", level = 0.95)
