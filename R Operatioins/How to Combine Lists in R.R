# Example 1: Combine Two Lists
# define lists
list1 <- list(2, 5, 6, 8)
list2 <- list(A=1:5, B=3)

# combine two lists into one
combined <- c(list1, list2)

# view combined list
combined

# get length of combined list
length(combined)

# get class of combined list
class(combined)

# Example 2: Combine More Than Two Lists
# define lists
list1 <- list(2, 5, 6, 8)
list2 <- list(A=1:5, B=3)
list3 <- list(X="A", Y="B")

# combine three lists into one
combined <- c(list1, list2, list3)

# view combined list
combined

# combine two lists using append()
combined <- append(list1,list2)

# view updated list
combined
