# Example 1
# In a three-way election for mayor, candidate A receives 10% 
# of the votes, candidate B receives 40% of the votes, 
# and candidate C receives 50% of the votes.
# If we select a random sample of 10 voters, what is the probability
# that 2 voted for candidate A, 4 voted for candidate B, 
# and 4 voted forcandidate C?

# calculate multinomial probability
dmultinom(x=c(2, 4, 4), prob=c(.1, .4,.5))

# Example 2
# Suppose an urn contains 6 yellow marbles, 2 red marbles, and 2 
# pink marbles. If we randomly select 4 balls from the urn, with 
# replacement, what is the probability that all 4 balls are yellow?
# calculate multinomial probability
dmultinom(x=c(4, 0, 0), prob=c(.6, .2, .2))


# Example 3
# Suppose two students play chess against each other. The probability
# that student A wins a given game is 0.5, the probability that student B 
# wins a given game is 0.3, and the probability that they tie in a given game is 0.2.
# If they play 10 games, what is the probability that player A wins 4 times, player 
# B wins 5 times, and they tie 1 time?

# calculate  multinomial probability
dmultinom(x=c(4, 5, 1), prob=c(.5, .3,.2))
