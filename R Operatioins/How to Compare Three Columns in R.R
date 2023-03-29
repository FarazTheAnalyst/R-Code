# Example: Compare Three Columns in R
# create data frame
df <- data.frame(A=c(4, 0, 3, 3, 6, 8, 7, 9, 12),
                 B=c(4, 2, 3, 5, 6, 4, 7, 7, 12),
                 C=c(4, 0, 3, 5, 5, 10, 7, 9, 12))

# view data frame
df

# create new column that checks if values in all three columns match
df$all_matching <- df$A == df$B & df$B == df$C

# view updated data frame
df

# we can use the following code to return 'Yes' if the values
# in all three columns match or 'No' otherwise
# create new column that checks if values in all three columns match
df$all_matching <- ifelse(df$A == df$B & df$B == df$C, "Yes", "No")

# view updated data frame
df
