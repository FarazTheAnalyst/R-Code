# Method 1: Convert Vector to String Using paste()
# create vector
x <- c("Andy", "Bernard", "Caleb", "Dan", "Eric", "Frank", "Greg")

# convert vector to string
new_string <- paste(x, collapse = " ")

# view string
new_string

# create vector
x <- c("Andy", "Bernard", "Caleb", "Dan", "Eric", "Frank", "Greg")

# convert vector to string
new_string <- paste(x, collapse = "")

# view string
new_string

# create vector
x <- c("Andy", "Bernard", "Caleb", "Dan", "Eric", "Frank", "Greg")

# convert vector to string
new_string <- paste(x, collapse = "-")

# view string
new_string

# Method 2: Convert Vector to String Using toString()
# create vector
x <- c("Andy", "Bernard", "Caleb", "Dan", "Eric", "Frank", "Greg")

# convert vector to string
new_string <- toString(x)

# view string
new_string

# Note that the toString() function always adds commas in between
# each element in the vector. Thus, you should only use this function
# if you want commas between each element.


























