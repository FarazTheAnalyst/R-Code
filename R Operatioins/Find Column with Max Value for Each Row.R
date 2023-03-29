# Example: Find Column with Max Value for Each Row in R
# create data frame
df <- data.frame(game1=c(23, 20, 14, 12, 19, 15),
                 game2=c(9, 10, 11, 13, 13, 15),
                 game3=c(29, 11, 22, 19, 14, 15))

# view data frame
df

# create new column that contians column with max value for each row
df$max_col <- colnames(df)[max.col(df, ties.method='first')]

# view updated data frame
df
