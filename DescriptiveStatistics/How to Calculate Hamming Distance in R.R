# hamming distance between binary vectors
# create vectors
x <- c(0, 0, 1, 1, 1)
y <- c(0, 1, 1, 1, 0)

# find hamming distance between vectors
sum(x != y)

# hamming distance between two numrical vectors
# create vectors
x <- c(7, 12, 14, 19, 22)
y <- c(7, 12, 16, 26, 27)

# find hamming distance between vectors
sum(x != y)

# hamming distance between string vectors
# create vectors
x <- c("a", "b", "c", "d")
y <- c("a", "b", "c", "r")

# find hamming distance between vectors
sum(x != y)
