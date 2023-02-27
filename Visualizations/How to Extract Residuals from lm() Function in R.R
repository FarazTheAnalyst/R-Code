# create data frame
df <- data.frame(minutes=c(5, 10, 13, 14, 20, 22, 26, 34, 38, 40),
                 fouls=c(5, 5, 3, 4, 2, 1, 3, 2, 1, 1),
                 points=c(6, 8, 8, 7, 14, 10, 22, 24, 28, 30))

# view data frame
df

# fit multiple linear regression model
fit <- lm(points ~ minutes + fouls, data = df)

# extract residuals from model
fit$residuals

# store residuals in variable
res <- fit$residuals

# produce residuals vs. fitted plot
plot(fitted(fit), res)

# add a horizontal line at 0
abline(0, 0)
