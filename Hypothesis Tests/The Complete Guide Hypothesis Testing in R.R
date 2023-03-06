# Example 1: One Sample t-test in R
# A one sample t-test is used to test whether or not the mean of a 
# population is equal to some value.

# For example, suppose we want to know whether or not the mean 
# weight of a certain species of some turtle is equal to 310 pounds.
# We go out and collect a simple random sample of turtles with the
# following weights

# define vector of turtle weights
turtle_weights <- c(300, 315, 320, 311, 314, 309, 300, 308, 305, 303, 305, 301, 303)

# perform one sample t-test
t.test(x=turtle_weights, mu=310)


# Example 2: Two Sample t-test in R
# A two sample t-test is used to test whether or not the means
# of two populations are equal.

# For example, suppose we want to know whether or not the mean
# weight between two different species of turtles is equal. To
# test this, we collect a simple random sample of turtles from 
# each species with the following weights

# define vector of turtle weights for each sample
sample1 <- c(300, 315, 320, 311, 314, 309, 300, 308, 305, 303, 305, 301, 303)
sample2 <- c(335, 329, 322, 321, 324, 319, 304, 308, 305, 311, 307, 300, 305)

# perform two sample t-test
t.test(x=sample1, y=sample2)

# Example 3: Paired Samples t-test in R
# A paired samples t-test is used to compare the means of
# two samples when each observation in one sample can be 
# paired with an observation in the other sample.

# For example, suppose we want to know whether or not a certain
# training program is able to increase the max vertical jump 
# (in inches) of basketball players.

# define before and after max jump heights
before <- c(22, 24, 20, 19, 19, 20, 22, 25, 24, 23, 22, 21)
after <- c(23, 25, 20, 24, 18, 22, 23, 28, 24, 25, 24, 20)

# perform paired samples t-test
t.test(x=before, y=after, paired=TRUE)






















