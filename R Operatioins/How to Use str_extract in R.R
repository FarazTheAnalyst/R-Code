# Example 1: Extract One Pattern from String
library("stringr")

# deifne string 
some_string <- "Hey there my name is Doug"

# extract "ther" from string
str_extract(some_string, "ther")

library("stringr")

# define string
some_string <- "Hey there my name is Doug"

# attempt to extract "apple" from string
str_extract(some_string, "apple")

# Example 2: Extract Numeric Values from String
library("stringr")

# define string 
some_string <- "There are 350 apples over there"

# extract only numeric valeus from string
str_extract(some_string, "\\d+")

# Example 3: Extract Characters from Vector of Strings
library("stringr")

# define vector of strings
some_strings <- c("4 apples", "3 bananas", "7 oranges")

# extract only characters form each from string in vector
str_extract(some_strings, "[a-z]+")






















