# make this example reproducible 
set.seed(0)

# define response vairable
y <- c(1:1000)

# define three predictor variables
x1 <- c(1:1000)*runif(n=1000)
x2 <- (c(1:1000)*rnorm(n=1000))^2
x3 <- (c(1:1000)*rnorm(n=1000))^3

# fit multiple linear regression model
model <- lm(y~x1+x2+x3)

library("car")

# create partial residual plots
crPlots(model)

# fit new model with transformed predictor variables
model_transformed <- lm(y~x1+sqrt(x2)+log10(x3^(1/3)))

# create partial ressidual plots for new model
crPlots(model_transformed)
