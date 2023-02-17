# Expected Value Using sum()
# define values
vals <- c(0, 1, 2, 3, 4)

# define probabilities
probs <- c(.18, .34, .35, .11, .02)

# calcualte expected value
sum(vals*probs)

# Expected Value Using weighted.mean()
# define values
vals <- c(0, 1, 2, 3, 4)

# define <- c(.18, .34, .35, .11, .02)

# calculate expected value
weighted.mean(vals, probs)

# Expected Value Using c()
# define values
vals <- c(0, 1, 2, 3, 4)

# define probabilities
probs <- c(.18, .34, .35, .11, .02)

# calculate expected values
c(vals %*% probs)












