# peroforming a t-test for slope of regression line in R
# create data frame
df <- data.frame(hours=c(1, 1, 2, 2, 3, 4, 5, 5, 5, 6, 6, 8),
                 score=c(65, 67, 78, 75, 73, 84, 80, 76, 89, 91, 83, 82))

# view data frame
df

# fit simple linear regression model
fit <- lm(score~hours, data=df)

summary(fit)
