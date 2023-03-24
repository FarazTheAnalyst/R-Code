# The map() function from the purrr package in R can be used
# to apply some function to each element in a vector or
# list and return a list as a result.

# Example 1: Use map() to Generate Random Variables

library(tidyverse)

# define vector
data <- 1:3

# apply rnorm() function to each value in vector
data %>% 
  map(function(x) rnorm(5, x))

# Example 2: Use map() to Transform Each Value in a Vector
# define vector
data <- c(2, 4, 10, 15, 20)

# calculate square of each value in the vector
data %>% 
  map(function(x) x^2)

# Example 3: Use map() to Calculate Mean of Each Vector in List
# define list of vectors
data <- list(c(1, 2, 3),
             c(4, 5, 6),
             c(7, 8, MA))

# calculate mean value of each vector in list
data %>% 
  map(mean, na.rm=TRUE)
