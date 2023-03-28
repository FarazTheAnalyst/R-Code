# Method 1: Use a For Loop
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# loop through each column and print mean of column
for(i in colnames(df)) {
  print(mean(df[[i]]))
}


# Method 2: Use sapply()
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# loop through each column and print mean of column
sapply(df, mean)

