# Method 1: Use cbind() to Bind Vectors into Matrix by Columns
# define vectors
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
vector2 <- c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20)
vector3 <- c(3, 6, 9, 12, 15, 18, 21, 24, 27, 30)

# column-bind vectors together into matrix
my_matrix <- cbind(vector1, vector2, vector3)

# view resulting matrix
my_matrix

# view dimensions of matrix
dim(my_matrix)

# Method 2: Use rbind() to Bind Vectors into Matrix by Rows
# create vectors
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
vector2 <- c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20)
vector3 <- c(3, 6, 9, 12, 15, 18, 21, 24, 27, 30)

# row-bind vectors together into matrix
my_matrix <- rbind(vector1, vector2, vector3)

# view resulting matrix
my_matrix

# view dimensions of matrix
dim(my_matrix)
