# jaccard similarity
a <- c(0, 1, 2, 5, 6, 8, 9)
b <- c(0, 2, 3, 4, 5, 7, 9)

# define Jaccard Similirity function
jaccard <- function(a, b) {
  intersection = length(intersect(a, b))
  union = length(a) + length(b) - intersection
  return (intersection/union)
}

# find jaccard similarity between the two sets
jaccard(a, b)

# create vectors return zero if no similiraty
c <- c(0, 1, 2, 3, 4)
d <- c(6, 7, 8, 9, 10)

jaccard(c, d)

# create vectro return 1 if two sets are identical
e <- c(0, 1, 2, 3, 4, 5)
f <- c(0, 1, 2, 3, 4, 5)

jaccard(e, f)

# create strings vector
g <- c("cat", "dog", "hippo", "monkey")
h <- c("monkey", "rhino", "ostrich", "salmon")

# View
jaccard(g, h)

# find jaccard distance between two sets which is he dissimalarity between two sets and is 
# calculated as 1 - jaccard similarity
a <- c(0, 1, 2, 5, 6, 8, 9)
b <- c(0, 2, 3, 4, 5, 7, 9)

# find jaccard distance between sets a and b
1 - jaccard(a, b)






















