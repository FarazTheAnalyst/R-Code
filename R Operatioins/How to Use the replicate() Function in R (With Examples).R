# You can use the replicate() function to repeatedly evaluate some 
# expression in R a certain number of times

# replicate the value 3 exactly 10 times
replicate(n=10, 3)

# replicate the letter "A" exactly 7 times
replicate(n=7, "A")

# replicate False exactly 5 times
replicate(n=5, FALSE)

# Example 2: Replicate a Function Multiple Times
# make this example reproducible
set.seed(1)

# generate 3 times that follow normal distribution
rnorm(3, mean = 0, sd = 1)

# make this exaple reproducible 
set.seed(1)

# generate 3 valeus that follow normal distribution (replicate this 4 times)
replicate(n=4, rnorm(3, mean = 0, sd = 1))

# make this example reproducible
set.seed(1)

# genereate 3 values that follow normal distribution  (replicate this 6 times)
replicate(n=6, rnorm(3, mean = 0, sd = 1))

# using replicate() to simulate data
# make this example reproducible
set.seed(1)

# create 5 samples each of size n=10
data <- replicate(n = 5, rnorm(10, mean=0, sd=1))

# view samples 
data

# calculate mean of each sample
colMeans(data)


















