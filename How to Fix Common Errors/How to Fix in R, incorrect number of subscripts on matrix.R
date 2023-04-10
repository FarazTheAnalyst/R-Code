# Example 1: Fix Error for a Single Value
# define vector
x <- c(4, 6, 7, 7, 15)

# attempt to assign the value "22" to element in third position
x[3, ] <- 22

# assign the value "22" to element in third position
x[3] <- 22

# display updated vector
x

# Example 2: Fix Error in a for Loop
# define vector
x <- c(4, 6, 7, 7, 15)

# attempt to replace every value in vector with zero
for (i in 1:length(x)) {
  x[i, ]=0
}

# define vector
x <- c(4, 6, 7, 7, 15)

# replace every value in vector with zero
for (i in 1:length(x)) {
  x[i]=0
}

# view updated vector
x
