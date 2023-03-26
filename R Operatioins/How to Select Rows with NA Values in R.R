# create data frame
df <- data.frame(points=c(4, NA, 10, 14, 15, NA, 20, 22),
                 rebounds=c(NA, 3, 3, 7, 6, 8, 14, 10),
                 assists=c(NA, 9, 4, 4, 3, 7, 10, 11))

# view data frame
df

# Example 1: Select Rows with NA Values in Any Column
# select rows with NA values in any column
na_rows <- df[!complete.cases(df), ]

# view results
na_rows

# Example 2: Select Rows with NA Values in Specific Column
# select rows with NA values in the points column
na_rows <- df[is.na(df$points), ]

# view results
na_rows
