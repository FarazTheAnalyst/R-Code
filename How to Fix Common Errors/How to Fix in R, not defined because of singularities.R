# How to Reproduce the Error
# create data 
df <- data.frame(y = c(0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
                 x1 = c(3, 3, 4, 4, 3, 2, 5, 8, 9, 9, 9, 8, 9, 9, 9),
                 x2 = c(6, 6, 8, 8, 6, 4, 10, 16, 18, 18, 18, 16, 18, 18, 18),
                 x3 = c(4, 7, 7, 3, 8, 9, 9, 8, 7, 8, 9, 4, 9, 10, 13))

# fit logistic regression model
model <- glm(y~x1+x2+x3, data=df, family = binomial)

# view model summary
summary(model)

# How to Handle the Error
# create correlatioin matrix
cor(df)

# fit logistic regression model removing x2 variable
model <- glm(y~x1+x3, data = df, family = binomial)

# model summary
summary(model)
