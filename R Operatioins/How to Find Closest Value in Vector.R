# Example: Find Closest Value in Vector in R
# define vectors
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
vector2 <- c(3, 5, 8, 11)

# define cut points
cuts <- c(-Inf, vector2[-1]-diff(vector2)/2, Inf)
cuts

# for  each value in vector1, find closest value in vector2
cut(vector1, breaks = cuts, labels = vector2)
