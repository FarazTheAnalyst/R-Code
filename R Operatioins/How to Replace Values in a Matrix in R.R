# create matrix
my_matrix <- matrix(1:20, nrow=5)

# display matrix
my_matrix

# Example 1: Replace Elements Equal to Specific Value
# replace 5 with 100
my_matrix[my_matrix==5] <- 100

# view updated matrix
my_matrix

# Example 2: Replace Elements Based on One Condition
# replace elements with value less than 15 with 0
# create matrix
my_matrix <- matrix(1:20, nrow=5)
my_matrix[my_matrix<15] <- 0

# view updated matrix
my_matrix

# Example 3: Replace Elements Based on Multiple Conditions
# create matrix
my_matrix <- matrix(1:20, nrow=5)

# replace elements with value between 10 and 15 with 99
my_matrix[my_matrix>10 & my_matrix<=15] <- 99

# view updated matrix
my_matrix
