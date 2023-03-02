# Example 1: Calculating Probability Less Than Some Value
# Suppose a restaurant estimates that their total sales for the 
# upcoming week will be a minimum of $10,000, a maximum of $30,000, and
# most likely $25,000.

# What is the probability that the restaurant makes less
# than $20,000 total sales?

install.packages("EnvStats")
library("EnvStats")

# calculate probability
ptri(q = 20000, min = 10000, max = 30000, mode  = 25000)


# Example 2: Calculating Probability Greater Than Some Value
# Suppose a shop estimates that the number of customers that will
# enter in a given week will be a minimum of 500, a maximum of 2,000, 
# and most likely 1,200.

# What is the probability that more than 1,500 customers enter 
# the shop in a given week?

# calculate probability
1 - ptri(q = 1500, min = 500, max = 2000, mode = 1200)
