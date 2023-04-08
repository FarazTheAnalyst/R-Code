# How to Reproduce the Error
# create numeric variable with length of zero
x <- numeric()

# if x less than 10, print x to console
if(x < 10) {
  x
}

# create numeric variable 
y <- 5

# if y is less than 10, print y to console
if(y < 10) {
  y
}

# How to Avoid the Error
if(isTRUE(x) && x < 10) {
  x
}
