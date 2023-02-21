#create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, 6, 2),
                 var3=c(9, 9, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# count total rows in data frame
nrow(df)

# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, NA, 2),
                 var3=c(9, 9, NA, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# count total rows in data frame with no NA values in any column of data frame
nrow(na.omit(df))

# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, 8, NA, 2),
                 var3=c(9, NA, NA, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# view data frame
df

# count total rows in data frame with no NA values in "var2" of data frame
nrow(df[!is.na(df$var2), ])






















