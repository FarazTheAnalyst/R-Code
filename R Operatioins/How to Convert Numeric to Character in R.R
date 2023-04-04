# Example 1: Convert a Vector from Numeric to Character
# create numeric vector
num <- c(12, 14, 19, 22, 26)

# convert numeric vector to character vector
chars <- as.character(num)

# view character vector
chars

# confirm class of character vector
class(chars)

# Example 2: Convert a Column from Numeric to Character

# create data frame
df <- data.frame(a = c('12', '14', '19', '22', '26'),
                 b = c(28, 34, 35, 36, 40))

# convert column "b" from numeric to character
df$b <- as.character(df$b)

# confirm class of character vector
class(df$b)

# Example 3: Convert Several Columns from Numeric to Character
# create data fram
df <- data.frame(a = c(12, 14, 19, 22, 26),
                 b = c('28', '34', '35', '36', '40'),
                 c = as.factor(c(1, 2, 3, 4, 5)),
                 d = c(45, 56, 54, 57, 59))

# display classes of each column
sapply(df, class)

# identify all numeric columns
nums <- sapply(df, is.numeric)

# convert all numeric columns to character
df[, nums] <- as.data.frame(apply(df[, nums], 2, as.character))

# display classes of each column
sapply(df, class)


















