# A Chi-Square Goodness of Fit Test is used to determine whether or not
# a categorical variable follows a hypothesized distribution.

# we will create two arrays to hold our observed frequencies and our
# expected proportion of customers for each day:

observed <- c(50, 60, 40, 47, 53)
expected <- c(.2, .2, .2, .2, .2) #must add up to 1

# perform Chi-Square Goodness of Fit Test
chisq.test(x=observed, p=expected)
