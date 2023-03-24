# You can use the rep() function in R  to replicate elements of
# vectors or lists a certain number of times.
# Example 1: Replicate a Vector Multiple Times
# define vector
x <- c(1, 10, 50)

# replicate the vector three times
rep(x, times=3)

# Example 2: Replicate Each Value in Vector the Same Number of Times
# define vector 
x <- c(1, 10, 50)

# replicate each value in vector five times
rep(x, each=5)

# Example 3: Replicate Each Value in Vector a Different Number of Times
# define vector
x <- c(1, 10, 50)

# replicate each value in vector a specific number of times
rep(x, times=c(2, 5, 3))

# define vector
x <- c("A", "B")

# replicate each value in vector four times and do this process two times
rep(x, each=4, times=2)
