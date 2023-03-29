# create data frame
df <- data.frame(var1=c(1, 3, 2, 9, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 7))

# delete columns 2 and 3 from data frame
df[ , c("var2", "var3")] <- list(NULL)

# view data frame
df

# create data frame
df <- data.frame(var1=c(1, 3, 2, 9, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 7))

# delete columns in position 2 and 3
df[ , c(2, 3)] <- list(NULL)

# view data frame
df

# create data frame
df <- data.frame(var1=c(1, 3, 2, 9, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 7))

# delete columns in range 1 through 3
df[ , 1:3] <- list(NULL)

# view data frame
df



















