# Example 1: Switch Two Columns Using Column Syntax
# create data frame
df <- data.frame(col1=c(1, 2, 6, 3, 6, 6),
                 col2=c(4, 4, 5, 4, 3, 2),
                 col3=c(7, 7, 8, 7, 3, 3),
                 col4=c(9, 9, 9, 5, 5, 3))

# view data frame
df

# switch positions of first and third column
df <- df[c("col3", "col2", "col1", "col4")]

# view new data frame
df

# Example 2: Switch Two Columns Using Row & Column Syntax
# create data frame
df <- data.frame(col1=c(1, 2, 6, 3, 6, 6),
                 col2=c(4, 4, 5, 4, 3, 2),
                 col3=c(7, 7, 8, 7, 3, 3),
                 col4=c(9, 9, 9, 5, 5, 3))

# view data frame
df

# switch positions of frist and third column
df <- df[ , c("col3", "col2", "col1", "col4")]

# view new data frame
df




























