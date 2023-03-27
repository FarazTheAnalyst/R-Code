# Example 1: Concatenate Vector of Strings Using paste() in Base R
# create vector of strings 
vector_of_strings <- c("This", "is", "a", "vector", "of", "strings")

# concatenate strings
paste(vector_of_strings, collapse = " ")

# create vector of strings
vector_of_strings <- c("This", "is", "a", "vector", "of", "strings")

# concatenate strings using dash as delimiter
paste(vector_of_strings, collapse = "-")

# create vector of strings 
vector_of_strings <- c('This', 'is', 'a', 'vector', 'of', 'strings')

# concatenate strings using no delimiter
paste(vector_of_strings, collapse = "")


# Example 2: Concatenate Vector of Strings Using str_paste() from stringi Package
library("stringi")

# create vector of strings
vector_of_strings <- c('This', 'is', 'a', 'vector', 'of', 'strings')

# concatenate strings
stri_paste(vector_of_strings, collapse = " ")
