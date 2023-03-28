# create a list
my_list <- list(A=1, B=2, C=3, D=4)

# view list
my_list

# define function
my_function <- function(var1, var2, var3){
  var1*var2*var3
}

# apply function to list using multiple arguments
lapply(my_list, my_function, var2=3, var3=5)
