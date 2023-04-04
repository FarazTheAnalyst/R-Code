# Example 1: Convert a Vector from Character to Numeric
# create character vector
chars <- c("12", "14", "19", "22", "26")

# convert character vector to numeric vector
numbers <- as.numeric(chars)

# view numeric vector
numbers

# comfirm class of numeric vector
class(numbers)

# Example 2: Convert a Column from Character to Numeric
# create data frame
df <- data.frame(a = c('12', '14', '19', '22', '26'),
                 b = c(28, 34, 35, 36, 40))

# convert column "a" from character to numberic
df$a <- as.numeric(df$a)

# view new data frame 
df

# confirm class of numeric vector
class(df$a)

# Example 3: Convert Several Columns from Character to Numeric
# create data frame
df <- data.frame(a = c('12', '14', '19', '22', '26'),
                 b = c('28', '34', '35', '36', '40'),
                 c = as.factor(c(1, 2, 3, 4, 5)),
                 d = c(45, 56, 54, 57, 59))

# display classes of each column
sapply(df, class)

# identify all character columns
chars <- sapply(df, is.character)
chars

# convert all character columns to numeric
df[, chars] <- as.numeric(apply(df[, chars], 2, as.numeric))

# display classes of each column 
sapply(df, class)

















