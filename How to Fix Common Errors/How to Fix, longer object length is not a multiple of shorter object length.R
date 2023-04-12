# This warning message occurs when you attempt to perform 
# some operation across two or more vectors that don't have 
# the same length.

# How to Reproduce the Warning Message
# define two vectors
a <- c(1, 2, 3, 4, 5)
b <- c(6, 7, 8, 9, 10)

# add the two vectors
a + b

# define two vectors
a <- c(1, 2, 3, 4, 5)
b <- c(6, 7, 8, 9)

# add the two vectors
a + b

# display length of vector a
length(a)

# display length of vector b
length(b)

# How to Fix the Warning Message
# To fix this warning message, we simply need to make sure
# that both vectors have the same length.
# add zero to the end of vector b
b <- c(b, 0)

# add the two vectors
a + b
#define two vectors
a <- c(1, 2, 3, 4, 5)
b <- c(6, 7)

# add zeros to the end of vector b
for(i in ((length(b)+1):length(a)))
  +{b = c(b, 0)}

# add the two vectors
a + b
