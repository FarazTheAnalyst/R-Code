# match one value in vector
# define value to look for in vector
value <- 10

# define vector of values
vector1 <- c(8, 9, 1, 10, 13, 15)

# find first occurance of 10 
match(value, vector1)

# define value to look for in vector
value <- 10

# define vector of values with mutiple "10 values
vector1 <- c(8, 9, 1, 10, 10, 10)

# find first occurance of 10
match(value, vector1)

# match values in two vectors
# define vectors of values
vector1 <- c(1, 2, 3, 4, 5, 6)
vector2 <- c(8, 6, 1, 10, 10, 15)

# find the first occurence of values in vector1 within vector2
match(vector1, vector2)

# specifying a different value to use in cases where there is no match
# return value 0 instead of NA
# define vectors of values
vector1 <- c(1, 2, 3, 4, 5, 6)
vector2 <- c(8, 6, 1, 10, 10, 15)

# find first occurrence of values in vector1 within vector2
match(vector1, vector2, nomatch = 0)













