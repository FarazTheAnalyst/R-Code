# Method 1: Generate One Random Number in Range
# generate one random number between 1 and 20
runif(n=1, min=1, max=20)

# Method 2: Generate Multiple Random Numbers in Range
# generate five random numbers between 1 and 20
runif(n=5, min=1, max=20)

# Method 3: Generate One Random Integer in Range
# generate one random integer between 1 and 20
sample(1:20, 1)

# Method 4: Generate Multiple Random Integers in Range
# generate five random integers between  1 and 20 (sample with replacement)
sample(1:20, 5, replace = TRUE)

# generate five random integers between 1 and 20 (sample without replacement)
sample(0:20, 5, replace = FALSE)
