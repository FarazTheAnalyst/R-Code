# Here's example of variable
first_variable <- "This is variable"
second_variable <- 12.5
vec_1 <- c(12,34,53.3,2, 235.3)
vec_1

# length function use
length(c(23.5,234.3,32,53))

# checking vector specific type
x <- c(5L,3L,2L)
is.integer(x)

# this will return False
y <- c(TRUE,FALSE,TRUE)
is.character(y)

# name() function assign a different names to the each element of vector
x <- c(2, 4, 3)
names(x) <- c("a","b","c")
x

# lists data can be of any type or different data
list("a",1L,1.4,TRUE)

# list can be inside a another list
list(list(list(1, 3, 5)))

# using the str() to find out the data type of the list
str(list(1, 2L, 1.5, TRUE))

# list inside 
z <- list(list(list(1,3,5)))
str(z)

# naming lists
list('Chicago' = 1, 'New york' = 2, 'Los Angles' = 3)





















