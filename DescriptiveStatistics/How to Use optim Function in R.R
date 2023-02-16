# find coefficients for linear regression model
df <- data.frame(x=c(1, 3, 3, 5, 6, 7, 9, 12),
                 y=c(4, 5, 8, 6, 9, 10, 13, 17))

# define function to minimize residual sum of squares
min_residuals <- function(data, par) {
  with(data, sum((par[1] + par[2] * x - y)^2))
}

# find coeffficients of linear regression model
optim(par=c(0, 1), fn=min_residuals, data = df)

# verify and find coefficients of linewar regression model using lm() funciton
lm(y ~ x, data = df)


# find coefficients for quadratic regression model
# create data frame
df <- data.frame(x=c(6, 9, 12, 14, 30, 35, 40, 47, 51, 55, 60),
                 y=c(14, 28, 50, 70, 89, 94, 90, 75, 59, 44, 27))

# define function to minimize residual sum of squares
min_residuals <- function(data,par) {
  with(data, sum((par[1] + par[2]*x + par[3]*x^2 - y)^2))
}

# find coefficeints of quadratic regression model
optim(par=c(0, 0, 0), fn=min_residuals, data=df)

# #create data frame
df <- data.frame(x=c(6, 9, 12, 14, 30, 35, 40, 47, 51, 55, 60),
                 y=c(14, 28, 50, 70, 89, 94, 90, 75, 59, 44, 27))

# create a new variable for x^2
df$x2 <- df$x^2

# fit quadratic regression model
quadraticModel <- lm(y ~ x + x2, data=df)

# display coefficients of quadratic regression model
summary(quadraticModel)$coef














