# Example 1: Check if Vector Contains Element
# create vector 
my_vector <- c("Andy", "Bert", "Chad", "Doug", "Bert", "Frank")

# check if vector contains "Andy"
"Andy" %in% my_vector

# create vector
my_vector <- c("Andy", "Bert", "Chad", "Doug", "Bert", "Frank")

# check if vector contains "Arnold"
"Arnold" %in% my_vector

# Example 2: Find Position of First Occurrence of Element
# create vector
my_vector <- c('Andy', 'Bert', 'Chad', 'Doug', 'Bert', 'Frank')

# find first occurance of "Bert"
match("Bert", my_vector)

# create vector
my_vector <- c('Andy', 'Bert', 'Chad', 'Doug', 'Bert', 'Frank')

# find first occurance of "Carl"
match("Carl", my_vector)

# Example 3: Find Position of All Occurrences of Element
# create vector
my_vector <- c('Andy', 'Bert', 'Chad', 'Doug', 'Bert', 'Frank')

# find all occurance of "Bert"
which("Bert" == my_vector)
