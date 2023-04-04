# Example 1: Convert a Vector from Factor to Numeric
# define factor vector
factor_vector <- factor(c(1, 5, 7, 8))

# convert factor vector to numeric vector
numeric_vector <- as.numeric(as.character(factor_vector))

# view class
class(numeric_vector)

# Example 2: Convert a Column from Factor to Numeric
# create data frame
df <- data.frame(a = factor(c(1, 5, 7, 8)),
                 b = c(28, 34, 35, 36))

# convert column "a" from factor to numeric
df$a <- as.numeric(as.character(df$a))

# view new data frame
df

# confirm class of numeric vector
class(df$a)

# Example 3: Convert Several Columns from Factor to Numeric
# create data frame
df <- data.frame(a = factor(c(1, 5, 7, 8)),
                 b = factor(c(2, 3, 4, 5)),
                 c = c('A', 'B', 'C', 'D'),
                 d = c(45, 56, 54, 57))

# display classes of each column
sapply(df, class)

# identify all factor columns
x <- sapply(df, is.factor)

# convert all factor columns to numeric
df[, x] <- as.data.frame(apply(df[, x], 2, as.numeric))

# display classes of each column
sapply(df, class)













