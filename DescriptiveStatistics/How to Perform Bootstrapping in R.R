# boot strap a single statistic
set.seed(0)
library("boot")

# define function to calculate R-squared
rsq_function <- function(formula, data, indices) {
  d <- data[indices, ] #allows boot to select sample
  fit <- lm(formula, data=d) #fit regression model
  return(summary(fit)$r.square) #return R-squared of model
}

# perform bootstrapping with 2000 replication
reps <- boot(data=mtcars, statistic = rsq_function, R=2000, formula=mpg~disp)

# view results of boostrapping
reps

# plotting
plot(reps)

# calculate adjusted bootstrap percentile (BCa) interval
boot.ci(reps, type = "bca")


# bootstrap multiple statistics
set.seed(0)
library("boot")

# define function to calculate fitted regression coefficients
coef_function <- function(formula, data, indices) {
  d <- data[indices, ] #allows boot to select sample
  fit <- lm(formula, data = d) #fit regression model
  return(coef(fit)) #return coefficient estimates of model
}

# perform bootstrapping with 2000 replications
reps <- boot(data=mtcars, statistic = coef_function, R=2000, formula=mpg~disp)

# view results of bootstrapping
reps

plot(reps, index=1) #intercept of model
plot(reps, index=2) #disp predictor variable

#  calculate adjusted bootstrap percentile (Bca) intervals
boot.ci(reps, type="bca", index=1) #intercept of model
boot.ci(reps, type = "bca", index=2) #disp predictor variable















