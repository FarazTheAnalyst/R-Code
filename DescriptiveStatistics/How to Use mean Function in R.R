# calculate mean of vector
# define vector
x <- c(3, 6, 7, 7, 12, 14, 19, 22, 24)

# calculate mean fo vector
mean(x)

# define vector with some missing valeus
x <- c(3, 6, 7, 7, NA, 14, NA, 22, 24)

# calculate mean of vector
mean(x, na.rm=TRUE)

# define vector
x <- c(3, 6, 7, 7, 12, 14, 19, 22, 24)

# calculate mean of vector after trimming 20% of observations off each end
mean(x, trim = 0.2)

# calculate mean of column in data frame
# define data frame
df <- data.frame(a=c(3, 6, 7, 7, 12, 14, 19, 22, 24),
                 b=c(4, 4, 5, 12, 13, 14, 9, 1, 2),
                 c=c(5, 6, 6, 3, 5, 5, 6, 19, 25))

# calculate mean of colum "a"
mean(df$a)

# calculate mean of several columns in data frame
# define data frame
df <- data.frame(a=c(3, 6, 7, 7, 12, 14, 19, 22, 24),
                 b=c(4, 4, 5, 12, 13, 14, 9, 1, 2),
                 c=c(5, 6, 6, 3, 5, 5, 6, 19, 25))

# calculate mean of columns "a" and "c"
apply(df[ , c("a", "c")], 2, mean)



































