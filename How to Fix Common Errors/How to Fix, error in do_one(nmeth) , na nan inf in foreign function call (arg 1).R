# This error occurs when you attempt to perform k-means
# clustering in R but the data frame you're using has one
# or more missing values.

# How to Reproduce the Error
# create data frame
df <- data.frame(var1=c(2, 4, 4, 6, 7, 8, 8, 9, 9, 12),
                 var2=c(12, 14, 14, 8, 8, 15, 16, 9, 9, 11),
                 var3=c(22, NA, 23, 24, 28, 23, 19, 16, 12, 15))

row.names(df) <- LETTERS[1:10]

# view data frame
df

# attempt to perform k-means clustiering with k=3 clusters
km <- kmeans(df, centers = 3)

# How to Fix the Error
# remove rows with NA values
df <- na.omit(df)

# perform k-means clustering with k=3 clusters
km <- kmeans(df, centers = 3)

# view results
km
