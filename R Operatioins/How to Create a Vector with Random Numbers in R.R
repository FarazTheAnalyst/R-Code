# Method 1: Create Vector with Random Values in Range
# make this example reproducible 
set.seed(1)

# create vector with 10 random numbers between 1 and 20
random_vec <- runif(n=10, min=1, max=20)

# view vector
random_vec

# Method 2: Create Vector with Random Integers in Range
# make this example reprducible
set.seed(1)

# create vector with 10 random numbers between 1 and 50
random_vec <- round(runif(n=10, min=1, max=50), 0)

# view vector
random_vec
