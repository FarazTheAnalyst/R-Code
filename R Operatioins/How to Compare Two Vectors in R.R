# Example 1: Check if Two Vectors Are Identical
# define vectors
vector_1 <- c('Andy', 'Bob', 'Carl', 'Doug')
vector_2 <- c('Bob', 'Carl', 'Doug', 'Ethan', 'Fred')

# check if two vectors are identical
identical(vector_1, vector_2)

# Example 2: Find Items that Exist in Both Vectors
# define vectors
vector_1 <- c('Andy', 'Bob', 'Carl', 'Doug')
vector_2 <- c('Bob', 'Carl', 'Doug', 'Ethan', 'Fred')

# display items that exist in both vectors
intersect(vector_1, vector_2)

# find how many items exist in both vectors
length(intersect(vector_1, vector_2))

# Example 3: Find Items that Only Exist in One Vector
# define vectors
vector_1 <- c('Andy', 'Bob', 'Carl', 'Doug')
vector_2 <- c('Bob', 'Carl', 'Doug', 'Ethan', 'Fred')

# display items that exist in first vector, but not in second vector
setdiff(vector_1, vector_2)

# define vectors
vector_1 <- c('Andy', 'Bob', 'Carl', 'Doug')
vector_2 <- c('Bob', 'Carl', 'Doug', 'Ethan', 'Fred')

# display itmes that exist in second vector, but not in first vector
setdiff(vector_2, vector_1)
