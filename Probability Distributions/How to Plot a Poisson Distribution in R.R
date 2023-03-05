# define range of "success"
success <- 0:20

# create plot of probability mass function
plot(success, dpois(success, lambda = 5), type = "h")

# modifying plot
success <- 0:20

plot(success, dpois(success, lambda = 5), 
     type = "h",
     main = "Possion Distribution (lambda = 5)",
     xlab = "# Successes",
     ylab = "Probability",
     lwd=3,
     col="skyblue")


# prevent R from displaying numbers in scientific notation
options(scipen = 999)

# define range of successes
success <- 0:20

# display probability of success for each number of trials
dpois(success, lambda = 5)
