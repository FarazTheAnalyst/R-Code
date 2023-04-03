# create matrix
my_matrix <- matrix(c(5, 4, 2, 2, 7, 9, 12, 10, 15, 4, 6, 3), ncol=2)

# view matrix
my_matrix

# Example 1: Sort Matrix by One Column Increasing
# sort matrix by first column increasing 
sorted_matrix <- my_matrix[order(my_matrix[, 1]), ]

# view sorted_matrix
sorted_matrix

# sort matrix by  second column increasing 
sorted_matrix <- my_matrix[order(my_matrix[, 2]), ]

# view sorted_matrix
sorted_matrix

# Example 2: Sort Matrix by One Column Decreasing
# sort matrix by first column decreasing
sorted_matrix <- my_matrix[order(my_matrix[, 1], decreasing=TRUE), ]

# view sorted matrix
sorted_matrix
