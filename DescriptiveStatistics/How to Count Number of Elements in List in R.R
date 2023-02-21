# define list
my_list <- list(x=c(1, 4, 4, 5, 7, 8),
                y="Hey",
                z=factor(c("A", "B", "C", "D")))

# view list
my_list

# count number of elements in list
# count number of elements in list
length(my_list)

# count number of elemnts in third component of list
length(my_list[[3]])

# count number of elements in each component of list
lengths(my_list)

# count total number of individual elemnts in entire list
sum(lengths(my_list))
