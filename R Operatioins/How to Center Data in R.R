# To center a dataset means to subtract the mean value from each individual
# observation in the dataset.

# Example 1: Center the Values of a Vector
# create vector
data <- c(4, 6, 9, 13, 14, 17, 18, 19, 19, 21)

# subtract the mean value from each observation in the vector
scale(data, scale=FALSE)

# Example 2: Center the Columns in a Data Frame
# create data frame
df <- data.frame(x = c(1, 4, 5, 6, 6, 8, 9),
                 y = c(7, 7, 8, 8, 8, 9, 12),
                 z = c(3, 3, 4, 4, 6, 7, 7))

# center each column in the data frame
df_new <- sapply(df, function(x) scale(x, scale = FALSE))

# display data frame
df_new

# We can verify that the mean of each column in the new data frame is
# equal  to zero by using the colMeans() function:
colMeans(df_new)
