# This error occurs when you attempt to use an if()
# function to check for some condition, but pass a vector
# to the if() function instead of individual elements.

# How to Reproduce the Error
# define data
x <- c(2, 3, 1, 1, 5, 7)

# if value in vector x is greater than 1, multiply it by 2
# if value in vector x is greater than 1, multiply it by 2
if(x > 1) {
  x*2
}

# We receive a warning message because we passed a vector to the if() statement.

# An if() statement can only check one element in a vector 
# at one time, but using this code we attempted to check every
# element in the vector at once.

# How to Fix the Error
# if value in vector x is greater than 1, multiply it by 2
ifelse(x>1, x*2, x)
