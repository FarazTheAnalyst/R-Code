# Example 1: Convert a Vector from Character to Factor
# create character vector
character_vector <- c("First", "Second", "Third")

# convert character vector to factor vector
factor_vector <- as.factor(character_vector)

# view factor vector
factor_vector

# confirm class of factor vector
class(factor_vector)

# Example 2: Convert a Column from Character to Factor
# create data frame
df <- data.frame(a = c('12', '14', '19', '22', '26'),
                 b = c(28, 34, 35, 36, 40))

# convert column "a" from character to factor
df$a <- as.factor(df$a)

# view new data frame
df

# confirm class of factor vector
class(df$a)

# Example 3: Convert Several Columns from Character to Factor
# create data frame
df <- data.frame(a = c('12', '14', '19', '22', '26'),
                 b = c('28', '34', '35', '36', '40'),
                 c = as.factor(c(1, 2, 3, 4, 5)),
                 d = c(45, 56, 54, 57, 59))

# display classes of each column
sapply(df, class)

# convert all character columns to factor
df <- as.data.frame(unclass(df), stringsAsFactors = TRUE)

# display classes of each column
sapply(df, class)














