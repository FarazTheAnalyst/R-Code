# create data frame
df <- data.frame(minutes=c(5, 10, 13, 14, 20, 22, 26, 34, 38, 40),
                 fouls=c(5, 5, 3, 4, 2, 1, 3, 2, 1, 1),
                 points=c(6, 8, 8, 7, 14, 10, 22, 24, 28, 30))

# view data frame
df

# fit multiple linear regression model (only for rows where minutes > 10)
fit <- lm(points ~ fouls + minutes, data = df, subset = (minutes > 10))

# view model summary
summary(fit)

# view number of observation used to fit model
nobs(fit)

# fit multiple linear regression model (only where minutes>10 & fouls<4)
fit <- lm(points ~ fouls + minutes, data = df, subset = (minutes>10 & fouls<4))

# view number of observation used to fit model
nobs(fit)
