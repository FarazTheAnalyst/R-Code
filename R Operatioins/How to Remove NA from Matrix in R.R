# create matrix
my_matrix <- matrix(c(NA, 0, NA, 5, 7, 4, 1, 3, 9, 5, 5, 8), nrow=4)

# view matrix
my_matrix

# Method 1: Remove Rows with NA Values
# remove all rows with NA values
new_matrix <- my_matrix[!rowSums(is.na(my_matrix)),]

# Method 2: Remove Columns with NA Values
# remove all columns with NA values
new_matrix <- my_matrix[, !colSums(is.na(my_matrix))]

# Bonus: Convert NA Values to Zero in Matrix
# remove all colsums with NA values
my_matrix[is.na(my_matrix)] <- 0

# view updated matrix
my_matrix
