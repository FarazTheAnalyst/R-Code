# create data frame
df <- data.frame(points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Add Prefix to All Column Names
# add prefix "total_" to all column names
colnames(df) <- paste("total", colnames(df), sep = "_")

# view updated data frame
df

# Example 2: Add Prefix to Specific Column Names
# create data frame
df <- data.frame(points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# add prefix "total_" to column names in index positions 1 and 3
colnames(df)[c(1, 3)] <- paste("total", colnames(df)[c(1, 3)], sep = "_")

# view updated data frame
df
