# Example 1: Append a Single Value to a List
# create list
my_list <- list(7, 14, c(1, 2, 3))

# view list
my_list

# get length of list
len <- length(my_list)

# append value to end of list
my_list[[len + 1]] <- 12

# view list
my_list

# Example 2: Append Multiple Values to a List
# create list
my_list <- list(7, 14, c(1, 2, 3))

# view list
my_list

# get length of list
len <- length(my_list)

# define values to append to list
new <- c(3, 5, 12, 14)

# append values to list
i = 1
while(i <= length(new)) {
  my_list[[len + i]] <- new[i]
  i <- i + 1
}

# display updated list
my_list



















