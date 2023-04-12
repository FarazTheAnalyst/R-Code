# This warning usually occurs when you attempt to use the
# cbind() function to column-bind together vectors 
# of differentlengths.

# How to Reproduce the Warning
# define three vectors with different lengths
A = c(4, 2, 3, 6)
B = c(9, 1, 8, 7, 0, 7)
C = c(3, 5, 3, 3, 6, 4)

# column bind three vectors into data frame repeating process in vector a is called
# recyliing in R
df <- cbind(A, B, C)

# view data frame
df

# how to avoid the warning
# calcualte max length of vectors
max_length <- max(length(A), length(B), length(C))

# set length of each vector equal to max length
length(A) <- max_length
length(B) <- max_length
length(C) <- max_length

# cbind the three vectors together into a data frame
df <- cbind(A, B, C)

# view data frame
df
