# create list 
my_list <- list(A = c(1, 2, 3),
                B = c(4, 5),
                C = 6)

# display
my_list

# Example 1: Convert List to Vector Using unlist() Function
# convert list to vector
new_vector <- unlist(my_list)

# display vector
new_vector

# specify use.names = FALSE to remove the names from the vector
# convert list to vector
new_vector <- unlist(my_list, use.names = FALSE)

# display vector
new_vector

# Example 2: Convert List to Vector Using flatten_* Function
library("purrr")

# convert list to vector
new_vector <- flatten_dbl(my_list)

# display vector
new_vector

library("purrr")

# define character list
my_char_list <- list(A = c('a', 'b', 'c'),
                     B = c('d', 'e'),
                     C = 'f')

# convert character list to character vector
new_chr_vector <- flatten_chr(my_char_list)

# display vector
new_chr_vector
























