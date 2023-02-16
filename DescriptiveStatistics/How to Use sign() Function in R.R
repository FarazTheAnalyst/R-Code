# use sign() with vector
# define vector of values
x <- c(-3, 0, 3)

# return sign of each element in vector
sign(x)

# use sign() with data frame column
# create data frame
df <- data.frame(x=c(0, 1.4, -1, 5, -4, 12),
                 y=c(3, 4, 3, 6, 10, 11))

# view data frame
df

# view sign of each value in column x
sign(df$x)

# use sign() to create new data frame column
# create data frame
df <- data.frame(x=c(0, 1.4, -1, 5, -4, 12),
                 y=c(3, 4, 3, 6, 10, 11))

# view data frame
df

# create new column "z" based on sign of values in column "x"
df$z <- with(df, ifelse(sign(x) == -1, "negative",
                        ifelse(sign(x) == 0, "zero", "positive")))

# view updated data frame
df












