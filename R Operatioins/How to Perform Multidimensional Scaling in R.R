# Example: Multidimensional Scaling in R
df <- data.frame(points=c(4, 4, 6, 7, 8, 14, 16, 19, 25, 25, 28),
                 assists=c(3, 2, 2, 5, 4, 8, 7, 6, 8, 10, 11),
                 blocks=c(7, 3, 6, 7, 5, 8, 8, 4, 2, 2, 1),
                 rebounds=c(4, 5, 5, 6, 5, 8, 10, 4, 3, 2, 2))

# add row names
row.names(df) <- LETTERS[1:11]

# veiw data frame
df

# calculate distance matrix
d <- dist(df)
d

# perform multidimensional scaling
fit <- cmdscale(d, eig=TRUE, k=2)

# extract (x, y) coordinates of multidimensional scaleing
x <- fit$points[, 1]
x
y <- fit$points[, 2]
y

# create scatter plot
plot(x, y, xlab="Coordinate 1", ylab = "Coordinate 2", 
     main = "Mutlidiemnsional Scaling Results", type = "n")

# add row names of data frame as lalbels
text(x, y, labels=row.names(df))

# view data frame values for players A and C
df[rownames(df) %in% c("A", "C"), ]

# view data frame valeus for players B and K
df[rownames(df) %in% c("B", "K"), ]

# veiw (x, y) coordinates of points in the plot
fit




















