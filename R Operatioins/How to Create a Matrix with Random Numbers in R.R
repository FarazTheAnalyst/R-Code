# Method 1: Create Matrix with Random Values in Range
# make this example reproducible
set.seed(1)

# create matrix with 10 ranodm numbers between 1 and 20
random_matrix <- matrix(runif(n=10, min=1, max=20), nrow=5)

# view matrix
random_matrix

# Method 2: Create Matrix with Random Integers in Range
# make this exammple reproducible
set.seed(1)

# create matrix with 10 random integers 1 and 50
random_matrix <- matrix(round(runif(n=10, min=1, max=20), 0), nrow=5)

# view matrix 
random_matrix
