# predict valeus using fitted multiple linear regression model
# create data frame
df <- data.frame(rating=c(67, 75, 79, 85, 90, 96, 97),
                 points=c(8, 12, 16, 15, 22, 28, 24),
                 assists=c(4, 6,6, 5, 3, 8, 7),
                 rebounds=c(1, 4, 3, 3, 2, 6, 7))

# view data frame
df

# fit multiple linear regression model
model <- lm(rating~points + assists + rebounds, data=df)

# view model summary
summary(model)

# define the fitted model to predict the rating for the new player
new <- data.frame(points=c(20), assists=c(5), rebounds=c(2))
new

# use the fitted model to predict the rating for the new player
predict(model, newdata = new)
