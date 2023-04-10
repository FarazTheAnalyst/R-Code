# How to Reproduce the Error
# make this example reproducible
set.seed(0)

# define data 
x1 <- rnorm(100)
x2 <- rnorm(100)
x3 <- x2*2
y <- rnorm(100)

# fit regression model
model <- lm(y~x1+x2+x3)

library(car)

# calculate VIF values for predictor variables 
vif(model)

# How to Fix the Error

# place variables in data frame
df <- data.frame(x1, x2, x3, y)

# create correlation matrix for data frame
cor(df)

# We can see that the variables x2 and x3 have a correlation 
# coefficient of 1. This tells us that these two variables
# are causing the error because they're perfectly correlated.

library(car)

set.seed(0)

# define data
x1 <- rnorm(100)
x2 <- rnorm(100)
x3 <- x2*3
y <- rnorm(100)

# fit regression model
model <- lm(y~x1+x2)

# calculate VIF values for predictor variables in model
vif(model)











