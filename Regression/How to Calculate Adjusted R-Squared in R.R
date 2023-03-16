data(mtcars)
# Example: How to Calculate Adjusted R-Squared in R
model <- lm(hp ~ mpg + wt + drat + qsec, data=mtcars)

# Method 1: Use the summary() function
summary(model)

# Method 2: Use summary(model)$adj.r.squared
summary(model)$adj.r.squared

# Method 3: Use a custom function
# define function to calculate adjuested R-squared
adj_r2 <- function(x) {
  return (1 - ((1-x$adj.r.squared)*(nobs(x)-1)/(nobs(x)-length(x$coefficients)-1)))
}

# use function to calculate adjusted R-squared of the model
adj_r2(model)

