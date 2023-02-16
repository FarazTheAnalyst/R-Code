# assign one value to new_variable
assign("new_variable", 5)

# print new_variable
new_variable

# assign vector of values to new_variable
assign("new_variable", c(5, 6, 10, 12))

# print new_variable
new_variable

# use for loop to assign values to different variables
for (i in 1:4) {
  assign(paste0("var_", i), i*2)
  
}

# view variables created in for loop
var_1
var_2
var_3
var_4
