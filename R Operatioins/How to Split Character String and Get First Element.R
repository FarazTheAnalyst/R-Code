# Example: Split Character String and Get First Element in R
# define string variable
string_var <- "This is a string variable"

# split string varaible based on spaces and get first element
strsplit(string_var, " ")[[1]][1]

# split string variable based on spaces and get second element
strsplit(string_var, " ")[[1]][2]

# split string varaible based on dashes and get first element
string_var <- "This-is-a-string-variable"
strsplit(string_var, "-")[[1]][1]
