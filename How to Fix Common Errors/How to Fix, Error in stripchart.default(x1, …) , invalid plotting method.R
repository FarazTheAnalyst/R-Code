# This error usually occurs when you attempt to create
# a scatter plot using a data frame instead of a vector.
# How to Reproduce the Error
# create data frame
df <- data.frame(x=c(1, 2, 2, 4, 7, 8, 9),
                 y=c(5, 5, 8, 10, 13, 13, 18))

# view data frame
df

# attempt to create scatter plot
plot(df[1], df[2])

# display class of df[1] and df[2]
class(df[1]);class(df[2])

# how to fix the error

# create scatter plot
plot(df[, 1], df[, 2])

# create scatter plot
plot(df$x, df$y)
