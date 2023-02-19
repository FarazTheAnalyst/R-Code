#  Max & Min of Vector
# define vector
x <- c(2, 3, 4, 4, 7, 12, 15, 19, 22, 28, 31, 34)

# find minimum value
min(x)

# find maximum value
max(x)

# define vector with some missing values
x <- c(2, 3, 4, 4, NA, 12, NA, 19, 22, 28, 31, 34)

# find minium value
min(x, na.rm = TRUE)

# find maximum value
max(x, na.rm = TRUE)

# max and min of entire data frame
# define data frame
df <- data.frame(a=c(1, 3, 4, 6, 8, 9),
                 b=c(7, 8, 8, 7, 13, 16),
                 c=c(11, 13, 13, 18, 19, 22),
                 d=c(12, 16, 18, 22, 29, 38))

# find minimum value
min(df)

# find maximum value
max(x, na.rm = TRUE)

# max and min of column in data frame
# define data frame
df <- data.frame(a=c(1, 3, 4, 6, 8, 9),
                 b=c(7, 8, 8, 7, 13, 16),
                 c=c(11, 13, 13, 18, 19, 22),
                 d=c(12, 16, 18, 22, 29, 38))

# find minmum value of column
min(df$c)

# find maximum value of column c
max(df$c)

# Max & Min of Several Columns in Data Frame
# define data frame
df <- data.frame(a=c(1, 3, 4, 6, 8, 9),
                 b=c(7, 8, 8, 7, 13, 16),
                 c=c(11, 13, 13, 18, 19, 22),
                 d=c(12, 16, 18, 22, 29, 38))

# find minimum value in columns a, b and d
apply(df[, c("a", "b", "d")], 2, min)

# find maximum value in  columns a, b and d
apply(df[, c("a", "b", "d")], 2, max)


























