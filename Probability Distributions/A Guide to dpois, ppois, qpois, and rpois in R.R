# dpois
# EXAMPLE 1 It is known that a certain website makes 10 sales per hour.
# In a given hour, what is the probability that the site 
# makes exactly 8 sales?
dpois(x=8, lambda = 10)

# ppois
# EXAMPLE1. It is known that a certain website makes 10 sales per hour. In 
# a given hour, what is the probability that the site makes 8 sales or less?
ppois(q=8, lambda = 10)

# EXAMPLE 3. It is known that a certain website makes 10 sales per hour.
# In a given hour, what is the probability that the site 
# makes more than 8 sales?
1 -ppois(q=8, lambda = 10)

# qpois
# EXAMPLE 4 It is known that a certain website makes 10 sales per hour.
# How many sales would the site need to make to be at the 90th 
# percentile for sales in an hour?
qpois(p=.90, lambda = 10)

# rpois
# EXAMPLE 5. Generate a list of 15 random variables that follow a Poisson
# distribution with a rate of success equal to 10.
rpois(n=15, lambda=10)
