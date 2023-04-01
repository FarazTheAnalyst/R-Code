# Example 1: Return One Value from Function in R
# define function that returns one value
multiply_values <- function(A, B) {
  C <- A * B
  return(C)
}

# use function
multiply_values(10, 3)

# Example 2: Return Multiple Values from Function in R
math_stuff <- function(A, B) {
  C <- A * B
  D <- A + B
  E <- A - B
  return(list(C, D, E))
}

# use function
math_stuff(10, 3)
