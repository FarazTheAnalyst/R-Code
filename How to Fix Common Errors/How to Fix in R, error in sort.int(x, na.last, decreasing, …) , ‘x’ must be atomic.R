# How to Reproduce the Error
# create list
some_list <- list(c(4, 3, 7), 2, c(5, 12, 19))

# view list
some_list

# view class
class(some_list)

# attempt to sort the values in the list
sort(some_list)

# How to Avoid the Error

# sort values in list
sort(unlist(some_list))

# sort values i list in descending order
sort(unlist(some_list), decreasing = TRUE)
