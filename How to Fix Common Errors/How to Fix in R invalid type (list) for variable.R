# How to Reproduce the Error 
# define variables
x <- list(1, 4, 4, 5, 7, 8, 9, 10, 13, 14)
y <- c(10, 13, 13, 14, 18, 20, 22, 24, 29, 31)

# atttempt to fit regression
model <- lm(y ~ x)

# How to Avoid the Error
# define variables
x <- list(1, 4, 4, 5, 7, 8, 9, 10, 13, 14)
y <- c(10, 13, 13, 14, 18, 20, 22, 24, 29, 31)

# attempt to fit regression model
model <- lm(y ~ unlist(x))

# view the model output
summary(model)

# define variables
x1 <- list(1, 4, 4, 5, 7, 8, 9, 10, 13, 14)
x2 <- list(20, 16, 16, 15, 16, 12, 10, 8, 8, 4)
y <- c(10, 13, 13, 14, 18, 20, 22, 24, 29, 31)

# fit multiple linear regression model
model <- lm(y ~ unlist(x1) + unlist(x2))

# view the mdoel ouput
summary(model)

