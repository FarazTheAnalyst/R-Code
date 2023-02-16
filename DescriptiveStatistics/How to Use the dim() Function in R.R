# create data frame
df <- data.frame(team=c("A", "B", "C", "D", "E"),
                  points=c(99, 90, 86, 88, 95),
                  assists=c(33, 28, 31, 39, 34),
                  rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# get the dimensions of data frame, this will return rows and columns
dim(df)

# use dim to get dimensions of matrix

# create matrix
mat <- matrix(c(1, 4, 4, 8, 5, 4, 3, 8), nrow=4)

# view matrix
mat

# get dimensions of matrix
dim(mat)

# use dim() to set dimensions of matrix
# create vector of values
x <- c(1, 4, 4, 8, 5, 4, 3, 8)

# define dimensions of values
dim(x) <- c(4, 2)

# veiw result
x

# view class 
class(x)

# use dim to get one dimensioins
# create matrix
x(matrix(1, 4, 4, 8, 5, 4, 3, 8))

# view matrix
x

# display number of rows in matrix
dim(x)[1]

# display number of columns
dim(x)[2]


























