# use %*% 
# define vectors
a <- c(2, 5, 6)
b <- c(4, 3, 2)

# calcutalte dot product between vectors
a %*% b

# define data
df <- data.frame(a=c(2, 5, 6),
                 b=c(4, 3, 2))

# calculate dot product columns "a" and "b" of data frame
df$a %*% df$b

# use the dot() fucntion
install.packages("pracma")
library("pracma")

# define vectors
a <- c(2, 5, 6)
b <- c(4, 3, 2)

# calculate dot product between vectors
dot(a, b)
