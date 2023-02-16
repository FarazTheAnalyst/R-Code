# use unlist() to convert list to vector
# create list
my_list <- list(A = c(1, 2, 3),
                B = c(4, 5),
                C = 6)

# display list
my_list

# convert list to vector
new_vector <- unlist(my_list)

# display vector
new_vector

# convert list to vector
new_vector <- unlist(my_list, use.names = FALSE)

# display vector
new_vector

# use unlist to convert list to matrix
#create list
my_list <- list(1:3, 4:6, 7:9, 10:12, 13:15)
my_list

# convert list to matrix
matrix(unlist(my_list), ncol=3, byrow = TRUE)

# Use unlist() to Sort Values in List
some_list <- list(c(4, 3, 7), 2, c(5, 12, 19))

# view list
some_list

#attempt to sort the values in the list this will through error
sort(some_list)

# list must first be converted to a vector for us to sort the values.
# sort valeus in list
sort(unlist(some_list))













