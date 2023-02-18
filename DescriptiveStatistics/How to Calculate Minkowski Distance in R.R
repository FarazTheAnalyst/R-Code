# Minkowski distance between two vectors
# define two vectors
a <- c(2, 4, 4, 6)
b <- c(5, 5, 7, 8)

# bind the two vectors into a single matrix
mat <- rbind(a, b)

# view matrix
mat

# calculate Minkowski between vectors using a power of 3
dist(mat, method = "minkowski", p=3)

# Minkowski distance between vectors in a matrix
# create four vectors
a <- c(2, 4, 4, 6)
b <- c(5, 5, 7, 8)
c <- c(9, 9, 9, 8)
d <- c(1, 2, 3, 3)

# bind vectors into one matrix
mat <- rbind(a, b, c, d)

# view matrix
mat

# calculate Minkowski distance between bectors using a power of 3
dist(mat, method = "minkowski", p=3)






















