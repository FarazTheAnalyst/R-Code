# create list
my_list <- list(a = 1:3, b = 7, c = "hey")

# view list
my_list

# Example 1: Extract One List Item
# extract first list item using index value
my_list[[1]]
# extract first list item using name
my_list[["a"]]

# extract first list item using name with $ operator
my_list$a

# Example 2: Extract Multiple List Items
# extract first and third list item using index values
my_list[c(1, 3)]

# extract first and third list item using names
my_list[c("a", "c")]

# Example 3: Extract Specific Element from List Item
# extract third element form the first item using index values
my_list[[c(1, 3)]]

# extract third element formthe first item using doulble brackets
my_list[[1]][[3]]
