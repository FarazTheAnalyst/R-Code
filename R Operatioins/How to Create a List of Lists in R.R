# Example: Create List of Lists in R
# define lists
list1 <- list(a = 5, b = 3)
list2 <- list(c="A", d=c("B", "c"))
list3 <- list(e=c(20, 5, 8, 16))

# create list of lists
list_of_lists <- list(list1, list2, list3)

# view the list of lists
list_of_lists

# use single brackets [] to access a specific list
# access second list
list_of_lists[2]

# use double brackets [[]]  and dollar sign $ operator to access a 
# specific element within a specific list
# access element "d" within second list
list_of_lists[[2]]
