# This error occurs when you compare some value to NA in an if statement
# in R using the syntax x == NA.
# An if statement expects either a TRUE or FALSE value,
# so you need to use is.na(x) instead because this 
# function always returns TRUE or FALSE.
# How to Reproduce the Error

# define vector with some missing values
x <- c(2, NA, 5, 6, NA, 15, 19)

# loop through vector and print "missing" each time an NA value is encountered
for(i in 1:length(x)) {
  
  if(x[i] == NA) {
    print("Missing")
  }
}

# How to Fix the Error
# We need to change the syntax to is.na(x) as follows:
# define vector with some missing values
x <- c(2, NA, 5, 6, NA, 15, 19)

# loop through vector and print "missing" each time an NA value in encountered
for (i in 1:length(x)) {
  
  if(is.na(x[i])) {
    print("Missing")
  }
}