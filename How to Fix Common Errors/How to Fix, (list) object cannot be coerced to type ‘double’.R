# This error occurs when you attempt to convert a list
# of multiple elements to numeric without first using the
# unlist() function.

# How to Reproduce the Error
# create list
x <- list(1:5, 6:9, 7)

# display list
x

# attempt to convert list to numeric
x_num <- as.numeric(x)

# How to Fix the Error
# create list
x <- list(1:5, 6:9, 7)

# convert list to numeric
x_num <- as.numeric(unlist(x))

# display numeric values
x_num

# verify that x_num is numeric
class(x_num)

# display total number of elements in original list
sum(lengths(x))

# display total numer of elements in numeric list
length(x_num)
