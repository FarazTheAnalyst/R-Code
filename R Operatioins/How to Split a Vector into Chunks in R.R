# Example: Splitting a Vector into Chunks in R
my_vector <- c(2, 2, 4, 7, 6, 8, 9, 8, 8, 12, 5, 4)

# view length of vector
length(my_vector)

# split vector into four chunks
chunks <- split(my_vector, cut(seq_along(my_vector), 4, labels = FALSE))

# view chunks
chunks

# access second chunk only
chunks[2]

# split vector into six chunks
chunks <- split(my_vector, cut(seq_along(my_vector), 6, labels = FALSE))

# view chunks
chunks
