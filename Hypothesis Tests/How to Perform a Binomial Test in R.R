# A binomial test compares a sample proportion to a hypothesized
# proportion. The test has the following null and alternative
# hypotheses:


# You want to determine whether or not a die lands on the number
# "3" during 1/6 of the rolls so you roll the die 24 times and 
# it lands on "3" a total of 9 times.  Perform a Binomial test 
# to determine if the die actually lands on "3" during 1/6 of rolls.

# perform tow-sided binomial test
binom.test(9, 24, 1/6)

# left-tailed Binomial test

# You want to determine whether or not a coin is less likely to
# land on heads compared to tails so you flip the coin 30 times and
# find that it lands on heads just 11 times. Perform a Binomial 
# test to determine if the coin is actually less likely to land 
# on heads compared to tails.

# Example 3: Right-tailed Binomial Test

# A shop makes widgets with 80% effectiveness. They implement a new
# system that they hope will improve the rate of effectiveness.
# They randomly select 50 widgets from a recent production run
# and find that 46 of them are effective. Perform a binomial test
# to determine if the new system leads to higher effectiveness.

# perform right-tailed BInomial test
binom.test(46, 50, 0.8, alternative="greater")
























