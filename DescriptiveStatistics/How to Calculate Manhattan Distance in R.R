# Manhattan distance between tw0 vectors
# create function to calculate Manhattan distance
manhattan_dist <- function(a, b) {
  dist <- abs(a-b)
  dist <- sum(dist)
  return(dist)
}

# define two vectors
a <- c(2, 4, 4, 6)
b <- c(5, 5, 7, 8)

# calculate Manhattan distance between vectors
manhattan_dist(a, b)

# create four vectors
a <- c(2, 4, 4, 6)
b <- c(5, 5, 7, 8)
c <- c(9, 9, 9, 8)
d <- c(1, 2, 3, 3)

# bind vectors into one matrix
mat <- rbind(a, b, c, d)

# view matrix
mat

# calculate Manhattan distance between each vector in the matrix
dist(mat, method = "manhattan")




















