# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 points=c(10, 10, 8, 14, 15, 15, 17, 17))

# view data frame
df

# Example 1: Replace Inf with NA in Vector
# create vector iwth some inf values
x <- c(4, 12, Inf, 8, Inf, 9, 12, 3, 22, Inf)

# replace inf values with NA
x[is.infinite(x)] <- NA

# view updated vector
x

# Example 2: Replace Inf with NA in All Columns of Data Frame
# create data frame
df <- data.frame(x=c(4, 5, 5, 4, Inf, 8, Inf),
                 y=c(10, Inf, Inf, 3, 5, 5, 8),
                 z=c(Inf, 5, 5, 6, 3, 12, 14))

# view data frame
df

# replace inf values with NA values in all columns
df[sapply(df, is.infinite)] <- NA

# view updated data frame
df

# Example 3: Replace Inf with NA in Specific Columns of Data Frame
# create data frame
df <- data.frame(x=c(4, 5, 5, 4, Inf, 8, Inf),
                 y=c(10, Inf, Inf, 3, 5, 5, 8),
                 z=c(Inf, 5, 5, 6, 3, 12, 14))

# view data frame
df

# replace inf values with NA values in columns "x" and "z" only
df[c("x", "z")][sapply(df[c("x", "z")], is.infinite)] <- NA

# view updated data frame
df






















