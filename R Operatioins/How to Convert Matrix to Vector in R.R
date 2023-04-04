# create matrix
my_matrix <- matrix(1:20, nrow = 5)

# display matrix
my_matrix

# Example 1: Convert Matrix to Vector (sorted by columns) Using c() function
# convert matrix to vector (sorted by columns)
new_vector <- c(my_matrix)

# display vector
new_vector

# Example 2: Convert Matrix to Vector (sorted by rows) Using c() function
# convert matrix to vector(sorted by rows)
new_vector <- c(t(my_matrix))

# display vector
new_vector

# Example 3: Convert Matrix to Vector (sorted by columns) 
# Using as.vector() function
# convert matrix to vector  (sorted by columns)
new_vector <- as.vector(my_matrix)

# display vector
new_vector

# Example 4: Convert Matrix to Vector (sorted by rows) 
# Using as.vector() function
# convert matrix to vector (sorted by rows)
new_vector <- as.vector(t(my_matrix))

# display vector
new_vector
