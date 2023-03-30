# Example 1: Remove Rows with NA in All Columns
# create data frame
df <- data.frame(x=c(3, 4, NA, 6, 8, NA),
                 y=c(NA, 5, NA, 2, 2, 5),
                 z=c(1, 2, NA, 6, 8, NA))

# view data frame
df

# remove rows with NA in all columns
df[rowSums(is.na(df)) != ncol(df), ]

# Example 2: Remove Rows with NA in At Least One Column
# create data frame
df <- data.frame(x=c(3, 4, NA, 6, 8, NA),
                 y=c(NA, 5, NA, 2, 2, 5),
                 z=c(1, 2, NA, 6, 8, NA))

# view data frame
df

# remove rows with NA in at least one column
df[complete.cases(df), ]
