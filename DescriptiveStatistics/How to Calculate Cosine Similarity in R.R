# cosine similarity between two vectors in R
install.packages("lsa")
library("lsa")

# define vectors
a <- c(23, 34, 44, 45, 42, 27, 33, 34)
b <- c(17, 18, 22, 26, 26, 29, 31, 30)

# calculate cosine similarity
cosine(a, b)

# cosine similarity of matrix in R
library("lsa")
a <- c(23, 34, 44, 45, 42, 27, 33, 34)
b <- c(17, 18, 22, 26, 26, 29, 31, 30)
c <- c(34, 35, 35, 36, 51, 29, 30, 31)

data <- cbind(a, b, c)

# calculate cosine similarity
cosine(data)
