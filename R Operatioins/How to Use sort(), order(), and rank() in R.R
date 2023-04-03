# Example: Use sort(), order(), & rank() with Vectors
# create vector
x <- c(0, 20, 10, 15)

# sort vector
sort(x)

# order vector
order(x)

# rank vector
rank(x)

# create vector
x <- c(0, 20, 10, 15)

# sort vector in decreasing order
order(x, decreasing = TRUE)

# rank vector in reverse order (largest value = 1)
rank(-x)

# Note: How to Handle Ties with rank() Function
# rank(x, ties.method = "average") we can specify
# average, first, min, max, random,
