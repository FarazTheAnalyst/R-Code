# Example 1: Calculate Log of Single Value
# calculate log of 100 with vase e
log(100)

# calculate log of 100 with base 10
log(100, base = 10)

# calculate log of 100 with base 3
log(100, base=3)

# Example 2: Calculate Log of Values in Vector
# define vector
x <- c(3, 6, 12, 16, 28, 45)

# calculate log of each value in vector with vase e
log(x)

# Example 3: Calculate Log of Values in Data Frame
# define data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# calculate log of each value in "var1" column
log(df$var1, base=10)

# calculate log of values in every column
sapply(df, function(x) log(x, base=10))

