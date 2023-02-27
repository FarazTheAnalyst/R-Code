# linear regression with categorical variables in R
# create data frame
df <- data.frame(points=c(7, 7, 9, 10, 13, 14, 12, 10, 16, 19, 22, 18),
                 hours=c(1, 2, 2, 3, 2, 6, 4, 3, 4, 5, 8, 6),
                 program=c(1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3))

# view data frame
df

# convert "program" to factor
df$program <- as.factor(df$program)

# fit linear regression model
fit <- lm(points~hours + program, data=df)

# view model summary
summary(fit)

# define new player
new <- data.frame(hours=c(5), program=as.factor(c(3)))
new

# use the fitted model to predict the points for the new player
predict(fit, newdata = new)
