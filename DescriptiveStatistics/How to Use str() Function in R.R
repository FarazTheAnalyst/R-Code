# use str() with vector
# create vector
x <- c(2, 4, 4, 5, 8, 10, NA, 15, 12, 12, 19, 24)

# display internal structure of vector
str(x)

# use str() with data frame
# create data frame
df <- data.frame(team=c("A", "B", "C", "D","E"),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# display internal structure of data frame
str(df)

# use str() with matrix
mat <- matrix(1:15, nrow=5)

# view matrix
mat

# display internal structure of matrix
str(mat)

# use str(), with list
# create list
my_list <- list(A=1:5, B=c(2, 9), C=c('hey', 'hello'))
# display internal structure of list
str(my_list)
















