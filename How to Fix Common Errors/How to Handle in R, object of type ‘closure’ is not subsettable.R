# How to Reproduce the Error
# define function
cool_function <- function(x) {
  x <- x*5
  return(x)
}

# define data 
data <- c(2, 3, 3, 4, 5, 5, 6, 9)

# apply function to data
cool_function(data)

# attempt to get first element of function
cool_function[1]

# print object type of function
typeof(cool_function)

# More Examples of 'Closure' Objects
# Any function in R is of the type 'closure'. For example,
# we would receive this error if we attempted to subset any 
# function in base R:

# attempt to subset eman function
mean[1]

# attempt to subset standard deviation function
sd[1]

# attempt to subset table function
tabld[1]

# How to Address the Error
# The way to address this error is to simply avoid subsetting a function.

# apply fucntion to just frist element in vector
cool_function(data[1])

# apply funciton to every element in vector
cool_function(data)

























