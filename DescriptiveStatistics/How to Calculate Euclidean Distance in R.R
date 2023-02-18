# euclidean function
euclidean <- function(a, b) sqrt(sum((a - b)^2))

# define two vectors
a <- c(2, 6, 7, 7, 5, 13, 14, 17, 11, 8)
b <- c(3, 5, 5, 3, 7, 12, 13, 19, 22, 7)

# calculate euclidean distance between vectors
euclidean(a, b)

# #define data frame
df <- data.frame(a=c(3, 4, 4, 6, 7, 14, 15),
                 b=c(4, 8, 8, 9, 14, 13, 7),
                 c=c(7, 7, 8, 5, 15, 11, 8),
                 d=c(9, 6, 6, 7, 6, 15, 19))

# calculate euclidean distance between columns a and b
euclidean(df$a, df$d)

# Note that this function will produce a warning message if the two vectors
#  are  not of equal length
# define two vectors of unequal length
a <- c(2, 6, 7, 7, 5, 13, 14)
b <- c(3, 5, 5, 3, 7, 12, 13, 19, 22, 7)

# attempt to calculate euclidean distance between vectors
euclidean(a, b)
