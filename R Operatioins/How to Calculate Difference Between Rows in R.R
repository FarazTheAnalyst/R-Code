# Example 1: Find Difference Between Rows of Every Column
# create data frame
df <- data.frame(day=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 sales=c(7, 8, 8, 12, 10, 9, 13, 16, 11, 7))

# view data frame
df

# calculate difference between rows for each column
diff(as.matrix(df))

# Example 2: Find Difference Between Rows of Specific Column
# create data frame
df <- data.frame(day=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 sales=c(7, 8, 8, 12, 10, 9, 13, 16, 11, 7))

# calculate difference between rows in "sales" column
diff(df$sales)

# Example 3: Find Difference Between Rows & Append New Column
# create data frame
df <- data.frame(day=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 sales=c(7, 8, 8, 12, 10, 9, 13, 16, 11, 7))

# calculate difference between rows in "sales" column
sales_diff <- diff(df$sales)

# append differences vector as new column
df$sales_dill <- c(NA, sales_diff)

# append difference vector as new column
df$sales_diff <- sales_diff

# view updated data frame
df
