# Example 1: Omit NA Values from Vector
# define vector
x <- c(1, 24, NA, 6, NA, 9)

# omit NA values from vector
x <- na.omit(x)

# view vector
x

# define vector
x <- c(1, 24, NA, 6, NA, 9)

# omit NA values form vector
x <- as.numeric(na.omit(x))

# view vector
x

# Example 2: Omit Rows with NA in Any Column of Data Frame
# define data frame
df <- data.frame(x=c(1, 24, NA, 6, NA, 9),
                 y=c(NA, 3, 4, 8, NA, 12),
                 z=c(NA, 7, 5, 15, 7, 14))

# view data frame
df

# omit rows with NA value in any column data frame
df <- na.omit(df)

# veiw data frame
df

# Example 3: Omit Rows with NA in Specific Column of Data Frame
# define data frame
df <- data.frame(x=c(1, 24, NA, 6, NA, 9),
                 y=c(NA, 3, 4, 8, NA, 12),
                 z=c(NA, 7, 5, 15, 7, 14))

# view data frame
df

# remove rows with NA value in x column
df <- df[!(is.na(df$x)), ]
























