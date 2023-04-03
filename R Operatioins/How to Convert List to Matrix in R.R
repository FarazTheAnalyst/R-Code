# create list
my_list <- list(1:3, 4:6, 7:9, 10:12, 13:15)

# view list
my_list

# convert list to matrix
matrix(unlist(my_list), ncol=3, byrow = TRUE)

# Example 2: Convert List to Matrix (By Columns)
# create list
my_list <- list(1:5, 6:10, 11:15)

# view list
my_list

# convert list to matrix
matrix(unlist(my_list), ncol=3)

# Cautions on Converting a List to Matrix
# create list
my_list <- list(1:5, 6:10, 11:13)

# view list
my_list

# attempt to convert list to matrix thir will through error
matrix(unlist(my_list), ncol = 3)
