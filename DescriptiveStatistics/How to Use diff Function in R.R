# find lagged differences between consecutive elements
# define vector
x <- c(4, 6, 9, 8, 13)

# find lagged differences between consecutive elements
diff(x)

# find lagged differences between non-consecutive elements
# define vector
x <- c(4, 6, 9, 8, 13)

# find lagged differences between elements 2 positions apart
diff(x, lag=2)

# find lagged differences in column of data frame
# define data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# find lagged differences between elemnts in "var1" column 
diff(df$var1)

# find lagged differences in several column of data frame
#define data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# find lagged differences between elements in each column
sapply(df, diff)





















