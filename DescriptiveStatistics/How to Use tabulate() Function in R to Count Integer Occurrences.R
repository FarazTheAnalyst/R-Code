# count integer occurrences in vector
data <- c(1, 1, 1, 2, 3, 3, 3, 4, 7, 8)

# count occurrences of integers in vectors
tabulate(data)

# count occurrences of integers but limit oupput to 5
tabulate(data, nbins = 5)

# count integer coccurrences in vector with decimals
# count vector of data values with decimals
data <- c(1.2, 1.4, 1.7, 2, 3.1, 3.5)

# count occurrences of integers
tabulate(data)

# count integer occurrences in vector with negative values
# create vector with some negative values and zeros
data <- c(-5, -5, -2, 0, 1, 1, 2, 4)

# count occurrences of integers
tabulate(data)


# the table() function
# create vector with a variety of numbers
data <- c(-5, -5, -2, 0, 1, 1, 2.5, 4)

# count occurrences of each unique value in vector
table(data)














