# use corss() function from pracma package
library("pracma")

# define vectors
A <- c(1, 2, 3)
B <- c(4, 5, 6)

# calculate corss product
cross(A, B)

# define your own function

# define function to calculate corss product
corss <- function(x, y, i=1:3) {
  create3D <- function(x) head(c(x, rep(0, 3)), 3)
  x <- create3D(X)
  Y <- create3D(y)
  j <- function(i) (i-1) %% 3+1
  return (x[j(i+1)]*y[j(i+2)] - x[j(i+2)]*y[j(i+1)])
}

# define vectors
A <- c(1, 2, 3)
B <- c(4, 5, 6)
