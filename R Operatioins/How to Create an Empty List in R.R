# Example 1: Create Empty List in R with Length of Zero
# create empty list
empty_list <- list()

# verify that empty_list is of class "list"
class(empty_list)

# view length of list
length(empty_list)

# Example 2: Create Empty List in R with Specific Length
# create empty list of length 8
empty_list <- vector(mode = "list", length = 8)

# verify that empty_list is of class "list"
class(empty_list)

# view list
empty_list

# Example 3: Append Values to Empty List in R

# create empty list of length 8
empty_list <- vector(mode = "list", length = 8)

# get length of list
len <- length(empty_list)

# define values to append to list
new <- c(3, 5, 12, 14, 17, 18, 18, 20)

# fill values in list
i = 1
while(i <= length(new)) {
  empty_list[[i]] <- new[i]
  i <- i + 1
}

# display updated list
empty_list





























