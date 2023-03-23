# The sample() function in R allows you to take a random sample of
# elements from a dataset or a vector, either with or without
# replacement.

# Generating a Sample from a Vector
# define vector a with 10 elements in it
a <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# generate random sample of 5 elements from vector a
sample(a, 5)

# generate another random sample of 5 elements from vector a
sample(a, 5)

# set.seed(some random number) to ensure that we get the same sample each time
set.seed(122)

# define vector a with 10 elements in it
a <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# generate ranodm sample of 5 elements from vector a
sample(a, 5)

# generate another random sample of  5 elements from vector a
set.seed(122)
sample(a, 5)

# generate random sample of 5 elements from vector a
# using sampling with replacement
sample(a, 5, replace = TRUE)


# Generating a Sample from a Dataset
# view first 6 rows of iris dataset
head(iris)

# set seed to ensure that this example is replicable
set.seed(100)

# choose a random vector of 10 elements form all 150 rows in iris datset
sample_rows <- sample(1:nrow(iris), 10)
sample_rows

# choose the 10 rows of the iris dataset that match the row numbers above
sample <- iris[sample_rows, ]
sample

















