# Example 1: Bob makes 60% of his free-throw attempts. If he shoots 12 
# free throws, what is the probability that he makes exactly 10?

# find the probability of 10 success during 12 trials where the probability of 
# on each trial is 0.6
dbinom(x=10, size=12, prob=.6)       

# Example 2: Sasha flips a fair coin 20 times. What is the probability
# that the coin lands on heads exactly 7 times?

# find the probability of 7 successes during 70 trials where the probabilities
# of successes on each trial is 0.5
dbinom(x=7, size=20, prob = .5)

# Example 1: Ando flips a fair coin 5 times. What is the probability that 
# the coin lands on heads more than 2 times?

# find the probability of more than 2 successes during 5 trials where the 
# probability of success on each trial is 9.5
pbinom(2, size=5, prob=.5, lower.tail=FALSE)

# Example 2:  Suppose Tyler scores a strike on 30% of his attempts when he 
# bowls. If he bowls 10 times, what is the probability that he scores 4 or fewer strikes?

# #find the probability of 4 or fewer successes during 10 trials where the
#probability of success on each trial is 0.3
pbinom(q=4, size=10, prob=.3)

# qbinom
# #find the 10th quantile of a binomial distribution with 10 trials and prob
#of success on each trial = 0.4
qbinom(.10, size=10, prob=.4)

# #find the 40th quantile of a binomial distribution with 30 trials and prob
#of success on each trial = 0.25
qbinom(.40, size = 30, prob = .25)

# #generate a vector that shows the number of successes of 10 binomial experiments with
#100 trials where the probability of success on each trial is 0.3.
results <- rbinom(10, size=100, prob = .3)
results

# find the mean number of success in the 10 experiments (compared to expected
# mean of 30)
mean(results)

# #generate a vector that shows the number of successes of 1000 binomial experiments
#with 100 trials where the probability of success on each trial is 0.3.
results <- rbinom(1000, size = 100, prob=.3)
results

# #find mean number of successes in the 100 experiments (compared to expected
#mean of 30)
mean(results)


































