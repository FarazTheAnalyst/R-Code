library("dplyr")
# How to Use Masked Functions
# Suppose you would like to use the intersect() function from the 
# base R package, but it is currently masked since there is an 
# intersect() function that exists in the dplyr package we loaded 
# more recently.
# To explicitly use the intersect() function from base R
base::intersect(x, y)
