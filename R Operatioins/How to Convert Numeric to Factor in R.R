# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'C', 'D'),
                 points=c(12, 15, 22, 29, 35, 24, 11, 24))

# view data frame
df

# view structure of data frame
str(df)

# Example 1: Convert Numeric to Factor Using as.factor()
# convert points column from numeric to factor
df$points <- as.factor(df$points)

# view updated data frame
df

# view updated structure of data frame
str(df)

# Example 2: Convert Numeric to Factor Using cut()
# convert points column from numeric to factor with three levels
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'C', 'D'),
                 points=c(12, 15, 22, 29, 35, 24, 11, 24))

df$points <- cut(df$points, 3, labels=c('OK', 'Good', 'Great'))

# view updated data frame
df

# view updated structure of data frame
str(df)
