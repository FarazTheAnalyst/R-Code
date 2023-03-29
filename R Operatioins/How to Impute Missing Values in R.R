# Often you may want to replace missing values in the
# columns of a data frame in R with the 
# mean or the median of that particular column.

# Example 1: Replace Missing Values with Column Means
# create data frame
df <- data.frame(var1=c(1, NA, NA, 4, 5),
                 var2=c(7, 7, 8, 3, 2),
                 var3=c(3, 3, 6, 6, 8),
                 var4=c(1, 1, 2, 8, 9))

# replace missing values i first column with mean of first column
df$var1[is.na(df$var1)] <- mean(df$var1, na.rm = TRUE)

# view data frame with missing values replaced
df

# create data frame
df <- data.frame(var1=c(1, NA, NA, 4, 5),
                 var2=c(7, 7, 8, NA, 2),
                 var3=c(NA, 3, 6, NA, 8),
                 var4=c(1, 1, 2, 8, 9))

# replace missing values in each column with column means
for(i in 1:ncol(df)) {
  df[ , i][is.na(df[ , i])] <- mean(df[ , i], na.rm = TRUE)
}

# view data frame with missing values replaced
df

# Example 2: Replace Missing Values with Column Medians
# create data frame

df <- data.frame(var1=c(1, NA, NA, 4, 5),
                 var2=c(7, 7, 8, NA, 2),
                 var3=c(NA, 3, 6, NA, 8),
                 var4=c(1, 1, 2, 8, 9))

# replace missing values in frist column with median of first column
df$var1[is.na(df$var1)] <- median(df$var1, na.rm = TRUE)

# view data frame with missing values replaced
df

# create data frame
df <- data.frame(var1=c(1, NA, NA, 4, 5),
                 var2=c(7, 7, 8, NA, 2),
                 var3=c(NA, 3, 6, NA, 8),
                 var4=c(1, 1, 2, 8, 9))

# replace missing values in each column with column medians
for(i in 1:ncol(df)) {
  df[ , i][is.na(df[ , i])] <- median(df[ , i], na.rm = TRUE)
}

# view data frme with missing values replaced
df


















