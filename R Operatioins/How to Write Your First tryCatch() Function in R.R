# Example: Create a tryCatch() Function in R
# Suppose we create the following tryCatch() function 
# that attempts to take the log of one value and then divide
# by a second value
log_and_divide <- function(x, y) {
  tryCatch(
    {
      result = log(x) / y
      return(result)
    },
    error = function(e) {
      message("An Error Occurred")
      print(e)
      return(NA)
    },
    warning =function(w) {
      message("A Warning Occurred")
      print(w)
      return(NA)
    }
  )
}

# let's run the function in different scenarios
# Scenario 1: No error or warning occurs.
# run function
log_and_divide(10, 2)

# Scenario 2: An error occurs.
log_and_divide(10)

# Scenario 3: A warning occurs.
# run functioni
log_and_divide(-10, 2)





