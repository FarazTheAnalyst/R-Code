# Example: How to Fix 'names do not match previous names'
# create and view first data frame
df1 <- data.frame(var1=c(1, 3, 3, 4, 5),
                  var2=c(7, 7, 8, 3, 2))

df1

# create and view second data frame
df2 <- data.frame(var3=c(3, 3, 6, 6, 8),
                  var4=c(1, 1, 2, 8, 9))

df2

# attempt to row bind the two data frames
rbind(df1, df2)

# check if column names are identical between two data frames
identical(names(df1), names(df2))

# define two data frames
df1 <- data.frame(var1=c(1, 3, 3, 4, 5),
                  var2=c(7, 7, 8, 3, 2))

df2 <- data.frame(var3=c(3, 3, 6, 6, 8),
                  var4=c(1, 1, 2, 8, 9))

# rename second data frame columns
names(df2) <- c("var1", "var2")

# row bind the two data frames
rbind(df1, df2)

# #define two data frames
df1 <- data.frame(var1=c(1, 3, 3, 4, 5),
                  var2=c(7, 7, 8, 3, 2))

df2 <- data.frame(var3=c(3, 3, 6, 6, 8),
                  var4=c(1, 1, 2, 8, 9))

# rename second data frame columns
names(df2) <- names(df1)

# row bind the two data frames
rbind(df1, df2)
