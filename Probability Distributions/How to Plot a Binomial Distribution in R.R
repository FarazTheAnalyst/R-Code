# probability mass function for a binomial distribution 
success <- 0:20
plot(success, dbinom(success, size=20, prob=.3), type="h")

# makeing the plot more aesthetically pleasinng
success <- 0:20
plot(success, dbinom(success, size = 20, prob = .3),
     type = "h",
     main = "Binomial Distribution (n=20, p=0.3)",
     ylab = "Probability",
     xlab = "# Successes", 
     lwd=3)

# prevent R from displaying numbers in scientific notation
options(scipen = 999)

# define range of success
success <- 0:20

# display probability of success for each number of trials
dbinom(success, size = 20, prob=.3)
