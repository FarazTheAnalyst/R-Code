# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 2, 5, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 14, 9))

# view data frame
df

# find sum of each column
colSums(df)

# Example 2: Use colSums() with NA Values in Data Frame
# create data frame with some NA values
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, NA, NA, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, NA, 9))

# view data frame
df

# find sum of each column
colSums(df, na.rm = TRUE)

# create data frame with some NA values
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, NA, NA, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, NA, 9))

# view data frame
df

# find sum of columns 1, 3, and 4
colSums(df[, c(1, 3, 4)], na.rm = TRUE)

























