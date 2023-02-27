# create data frame
df <- data.frame(rating=c(67, 75, 79, 85, 90, 96, 97),
                 points=c(8, 12, 16, 15, 22, 28, 24),
                 assists=c(4, 6, 6, 5, 3, 8, 7),
                 rebounds=c(1, 4, 3, 3, 2, 6, 7))

# fit multiple linear  regression model
model <- lm(rating ~ points + assists + rebounds, data = df)

# view model summary
summary(model)

# extract residual standard error of regression model
summary(model)$sigma

# extract standard error of indicidual regression coefficients
sqrt(diag(vcov(model)))

