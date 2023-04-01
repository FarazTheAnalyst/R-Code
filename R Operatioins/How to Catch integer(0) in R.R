# Sometimes when you use the which() function in R, you may 
# end up with integer(0) as a result, which indicates that
# none of the elements in a vector evaluated to TRUE.
# define vector of values
data <- c(1, 2, 4, 4, 5, 7, 8, 9)

# find elements in vector equal to 10
x <- which(data == 10)

# view results
x

# Example 1: Catch integer(0) in R Using identical() Function
# define vector of values
data <- c(1, 2, 4, 4, 5, 7, 8, 9)

# find elements in vector equal to 10
# test if x is identical to integer(0)
identical(x, integer(0))

# Example 2: Catch integer(0) in R Using if else Function
# define function to catch integer(0)
integer0_test <- function(data) {
  if(identical(data, integer(0))) {
    return("It is an integer(0")
  } 
  else {
    return(data)
  }
} 

# define vector of values
data <- c(1, 2, 4, 4, 5, 7, 8, 9)

# find elements in vector equal to 10
x <- which(data == 10)

# use function to test if x is integer (0)
integer0_test(x)

# define vector of values
data <- c(1, 2, 4, 4, 5, 7, 8, 9)

# find elements in vector equal to 4
x <- which(data == 4)

# use function to test if x is integer(0)
integer0_test(x)  
  
  
  
  
  












