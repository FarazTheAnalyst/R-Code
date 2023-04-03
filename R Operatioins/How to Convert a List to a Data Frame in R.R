# Method 1: Base R
# create list
my_list <- list(letters[1:5], letters[6:10])
my_list

# convert list to data frame
data.frame(t(sapply(my_list, c)))

# Method 2: Data Table
# load data.table library
library("data.table")

my_list <- list(a=list(var1 = 1, var2 = 2, var3 = 3),
                b=list(var1 = 4, var = 5, var3 = 6))

# view list
my_list

# convert list to data frame
DT <- rbindlist(my_list)
as.data.frame(DT)

# Method 3: Dplyr
# load library
library("dplyr")

# create list
my_list <- list(a = list(var1 = 1, var2 = 2, var3 = 3),
                b = list(var1 = 4, var2 = 5, var3 = 6))

# view list
my_list

# convert list to data frame
bind_rows(my_list)



















