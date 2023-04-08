# How to Reproduce the Error
# define x
x <- 5

# use if else statement to print string
if(x < 7) {
  print("x is less than 7")
}
else{
  print("x is not less than 7")
}

# How to Fix the Error
# To fix this error, we simply need to move the else statement up
# one line so that it appears immediately after the first
# closing curly bracket:
# define x 
x <- 5

# use if else statement to print string
if(x < 7) {
  print("x is less than 7")
} else {
  print("x is not less than 7")
}
