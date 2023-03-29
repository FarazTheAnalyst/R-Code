# Example 1: Use is.null to Check if Object is NULL
# create non-null vector
x <- c(1, 4, 15, 6, 7)

# test if x is NULL
is.null(x)

# create null vector
y <- NULL

# test if y is NULL
is.null(y)

# create empty vector
x <- c()

# test if x is NULL
is.null(x)

# Example 2: Use !is.null to Check if Object is Not NULL

# create non-null vector
x <- c(1, 4, 15, 6, 7)

# test if x is not NULL
!is.null(x)

# create non-null vector
y <- NULL

# test if y is not NULL
!is.null(y)
