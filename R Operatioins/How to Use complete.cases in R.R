# Example 1: Remove Missing Values from Vector
# create vector
x <- c(1, 24, NA, 6, NA, 9)

# remove NA values from vector
x <- x[complete.cases(x)]
x

# example 2: remove rows with NA in any column of data frame
# define data frame
df <- data.frame(x=c(1, 24, NA, 6, NA, 9),
                 y=c(NA, 3, 4, 8, NA, 12),
                 z=c(NA, 7, 5, 15, 7, 14))

# view data fraem
df
df <- df[complete.cases(df), ]

# view data frame
df

# example 3: Remove rows with NA in specific columns of data frame
# define data frame
df <- data.frame(x=c(1, 24, NA, 6, NA, 9),
                 y=c(NA, 3, 4, 8, NA, 12),
                 z=c(NA, 7, 5, 15, 7, 14))

# view data frame
df

# remove rows with NA value in y or z column
df <- df[complete.cases(df[ , c("y", "z")]), ]


















