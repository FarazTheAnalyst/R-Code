# Using colMeans() to Find the Mean of Multiple Columns
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))
# find mean of each column
colMeans(df)

# find the mean of column 2 and 3
colMeans(df[ , c(2, 3)])

# find the mean of first three columns
colMeans(df[ , 1:3])

# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9),
                 var5=c('a', 'a', 'b', 'b', 'c'))


# find mean of only numeric columns
colMeans(df[sapply(df, is.numeric)])

# create data frame with some missing values
df <- data.frame(var1=c(1, 3, NA, NA, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, NA))

# find mean of each column and ignore missing values
colMeans(df, na.rm = TRUE)










