# define four vectors
a <- c(2, 4, 4, 6)
b <- c(5, 5, 7, 8)
c <- c(9, 9, 9, 8)
d <- c(1, 2, 3, 3)

# row bind four vectors into matrix
mat <- rbind(a, b, c, d)

# view matrix
mat

# use dist() to calculate euclidean distance
# calculate euclidean distance between each row in matrix
dist(mat)

# use dist() to calculate maximum distance
# calculate maximum distance between each row in matrix
dist(mat, method="maximum")

# use dist() to calculate canberra distance
# calculate canberra distance between each row in matrix
dist(mat, method="canberra")

# use dist() to calculate binary distance
# calculate binary distance between each row in matrix
dist(mat, method = "binary")

# calculate minkowski distance between each row in matrix
dist(mat, method = "minkowski", p=3)



























