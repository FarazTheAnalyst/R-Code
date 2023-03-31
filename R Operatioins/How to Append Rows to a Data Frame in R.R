# Method 1: Use rbind() to Append Data Frames
# define data frame
df1 <- data.frame(var1=c(4, 13, 7, 8),
                  var2=c(15, 9, 9, 13),
                  var3=c(12, 12, 7, 5))

# view data frame
df1

# define second data frame
df2 <- data.frame(var1=c(4, 13),
                  var2=c(9, 12),
                  var3=c(6, 6))

df2

# append the rows of the second data frame to end of first data frame
df3 <- rbind(df1, df2)

# view  updated data frame
df3

# Method 2: Use nrow() to Append a Row 
# define first data frame
df1 <- data.frame(var1=c(4, 13, 7, 8),
                  var2=c(15, 9, 9, 13),
                  var3=c(12, 12, 7, 5))

df1

# append row to end of data frame
df1[nrow(df1) + 1, ] = c(5, 5, 3)
df1
