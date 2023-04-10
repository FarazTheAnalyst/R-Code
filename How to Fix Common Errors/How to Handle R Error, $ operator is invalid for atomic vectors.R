# How to Reproduce the Error Message
# deifne  vector
x <- c(1, 3, 7, 6, 2)

# provide names
names(x) <- c("a", "b", "c", "d", "e")

# display vector
x

# attempt to access value in "e"
x$e

# check if vector is atomic
is.atomic(x)

# Method #1: Access Elements Using Double Brackets
# define vector
x <- c(1, 3, 7, 6, 2)

# provide names
names(x) <- c("a", "b", "c", "d", "e")

# access value for "e"
x[["e"]]

# Method #2: Access Elements Using getElement()
# define vector
x <- c(1, 3, 7, 6, 2)

#provide names
names(x) <- c('a', 'b', 'c', 'd', 'e')
# access value for "e"
getElement(X, "e")

# Method #3 Convert Vector to Data Frame & Use $ Operator
# define vector 
x <- c(1, 3, 7, 6, 2)

# provide names
names(x) <- c("a", "b", "c", "d", "e")

# convert vector to data frame
data_x <- as.data.frame(t(x))
data_x

# accesss value for "e"
data_x$e






















