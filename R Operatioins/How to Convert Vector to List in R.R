# Example: Convert Vector to List in R
# create vector
my_vector <- c("A", "B", "C","D")

# convert vector to list
my_list <- as.list(my_vector)

# view list
my_list

# view class of list
class(my_list)

# bonus: append vector to list
# attempt to create list with 6 elements
some_list <- list("A", "B", as.list(c("C", "D", "E", "F")))

# view list
some_list

# define vector
my_vector <- c("C", "D", "E", "F")

# define first list
list1 <- list("A", "B")

# convert vector to second list
list2 <- as.list(my_vector)

# create long list by combining first list and second list
list3 <- c(list1, list2)

# view result
list3
