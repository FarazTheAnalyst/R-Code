# Example 1: Rename Columns After Using cbind
# create two vectors
vec1 <- c(1, 3, 3, 4, 5)
vec2 <- c(7, 7, 8, 3, 2)

# cbind the two vectors into a matrix
new_matrix <- cbind(vec1, vec2)

# view matrix
new_matrix

# rename columns
colnames(new_matrix) <- c("new_vec1", "new_vec2")

# veiw matrix
new_matrix

# Example 2: Rename Columns During cbind
# create two vectors
vec1 <- c(1, 3, 3, 4, 5)
vec2 <- c(7, 7, 8, 3, 2)

# cbind two vectors into matrix and rename columns
new_matrix <- cbind(new_vec1 = vec1, new_vec2 = vec2)

# view matrix
new_matrix
