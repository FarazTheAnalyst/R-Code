# create vectors
a <- c(1, 3, 4, 5)
b <- c(2, 2, 3, 3)

# perform element wise multiplication
a*b

# multiply data frame & vector
# define data frame
df <- data.frame(a=c(1, 3, 4, 5),
                 b=c(2, 2, 3, 3))

# view data frame
df

# define vector
x <- c(2, 5, 5, 8)

# multiply data frame by vector
df*x

# multiply two data frames
# define data frame
df1 <- data.frame(a=c(1, 3, 4, 5),
                  b=c(2, 2, 3, 3))

df2 <- data.frame(c=c(6, 2, 2, 2),
                  d=c(1, 7, 4, 9))

# multiply two data frame
df1*df2

# Note that we will receive an error if we attempt to multiply two data frames of different sizes
# define data frames of unequal sizes
df1 <- data.frame(a=c(1, 3, 4, 5),
                  b=c(2, 2, 3, 3))

df2 <- data.frame(c=c(6, 2, 2),
                  d=c(1, 7, 4))

# attempt to multiply two data frames
df1*df2








