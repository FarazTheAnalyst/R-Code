# create data frame
df <- data.frame(points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Add Suffix to All Column Names
# add suffix "_total" to all column names
colnames(df) <- paste(colnames(df), "total", sep = "_")

# view updated data frame
df

# Example 2: Add Suffix to Specific Column Names
# create data frame
df <- data.frame(points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# add suffix "_total" to column names in index positions 1 and 3
colnames(df)[c(1, 3)] <- paste(colnames(df)[c(1, 3)], "total", sep = "_")



# view updated data frame
df
