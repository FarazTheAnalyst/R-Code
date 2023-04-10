# How to Reproduce the Error
# define vectors
x1 <- c(1, 2, 3, 4, 5, 6)
x2 <- c(8, 8, 8, 7, 5)
y <- c(9, 11, 12, 13, 14, 16)

# attempt to create data frame using vectors as columns
df <- data.frame(x1=x1, x2=x2, y=y)

# print length of each vector
length(x1)

length(x2)

length(y)

# How to Fix the Error
# we could pad the shortest vector with NA values so that
# each vector has the same length:

# define vectors
x1 <- c(1, 2, 3, 4, 5, 6)
x2 <- c(8, 8, 8, 7, 5)
y <- c(9, 11, 12, 13, 14, 16)

# pad shortest vector with NA's to have same length as longest vector
length(x2) <- length(y)

# create data frame using vectors as columns
df <- data.frame(x1=x1, x2=x2, y=y)

# view resulting data frame
df

