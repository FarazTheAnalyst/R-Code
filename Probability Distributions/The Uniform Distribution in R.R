# Problems using the uniform distribution in R
# A bus shows up at a bus stop every 20 minutes.
# If you arrive at the bus stop, what is the probability that the bus will
# show up in 8 minutes or less?

# SOLUTION we want to know the probability taht  the bus will show up 
#  in 8 minutes or less, this will show up  probability in 8 minutes or less
# this is cdf cumulative distribution function
punif(8, min = 0, max = 20)


# The weight of a certain species of frog is uniformly 
# distributed between 15 and 25 grams. If you randomly select a 
# frog, what is the probability that the frog weighs between 17 and 19 grams?

# SOLUTION to calculate the cumulative probability of a frog weighing less
# than 19 pounds and 17 pounds
punif(19, min = 15, max = 25) - punif(17, min=15, max=25)


# The length of an NBA game is uniformly distributed 
# between 120 and 170 minutes. What is the probability that a 
# randomly selected NBA game lasts more than 150 minutes?

# SOLUTION to answer this question , we can use the formulat
# 1 - (probability that the game lasts less than 150 minutes)

1 - punif(150, 120, 170)
