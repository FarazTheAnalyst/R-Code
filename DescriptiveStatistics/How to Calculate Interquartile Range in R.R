# define vector
x <- c(4, 6, 6, 7, 8, 12, 15, 17, 20, 21, 21, 23, 24, 27, 28)

# calculate interquartile range of values in vector
IQR(x)

# interquartile range of a vector with missing values
# define vector with some misssing values
x <- c(4, 6, NA, 7, NA, NA, 15, 17, 20, 21, 21, 23, 24, 27, 28)

# calculate interquartile range of values in vector
IQR(x, na.rm = TRUE)

# interquartile range of column in data frame
# define data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# calculate interquartile range of "var1" column
IQR(df$var1)

# interquartile range of several columns in data frame
# define data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# calculate interquartile range of "var1", "var2", and "var4" columns
sapply(df[, c("var1", "var2", "var4")], IQR)




















