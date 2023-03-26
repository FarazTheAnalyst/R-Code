# Example: Use strsplit() with Multiple Delimiters in R
# create string 
my_string <- "this is a, string & with  seven words"

# split string based on spaces
strsplit(my_string, " ")

# split string based on multiple delimiters
strsplit(my_string, "[,& ]+")
