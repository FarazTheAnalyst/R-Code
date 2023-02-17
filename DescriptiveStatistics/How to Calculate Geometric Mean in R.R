# calculate geometric mean of vector
# define vector
x <- c(4, 8, 9, 9, 12, 14, 17)

# calculate geometric mean of values in vector
exp(mean(log(x)))

# calculate geometric mean of vectors with zeros

# define vector with some zeros and negative numbers
x <- c(4, 8, 9, 9, 12, 14, 17, 0, -4)

# calculate geomtric mean of values in vector
exp(mean(log(x[x>0])))

# calculate geometric mean of columns in data frame
# define data frame
df <- data.frame(a=c(1, 3, 4, 6, 8, 8, 9),
                 b=c(7, 8, 8, 7, 13, 14, 16),
                 c=c(11, 13, 13, 18, 19, 19, 22),
                 d=c(4, 8, 9, 9, 12, 14, 17))

# calculate geometric mean of values in column "a"
exp(mean(log(df$a)))

#define data frame
df <- data.frame(a=c(1, 3, 4, 6, 8, 8, 9),
                 b=c(7, 8, 8, 7, 13, 14, 16),
                 c=c(11, 13, 13, 18, 19, 19, 22),
                 d=c(4, 8, 9, 9, 12, 14, 17))

# calculate geometric mean of values in column "a", "b" , "d"
apply(df[ , c("a", "b", "d")], 2, function(x) exp(mean(log(x))))






















