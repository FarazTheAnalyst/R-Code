# Example 1: Use str_count with One Pattern
library("stringr")

# create character vector
x <- c("Mavs", "Cavs", "Nets", "Trailblazers", "Heat")

# count number of times "a" occurs in each element in vector
str_count(x, "a")

# Example 2: Use str_count with Multiple Patterns
library("stringr")

# create character vector
x <- c("Mavs", "Cavs", "Nets", "Trailblazers", "Heat")

# count number of times "a" or "s" occurs in each element in vector
str_count(x, "a|s")
