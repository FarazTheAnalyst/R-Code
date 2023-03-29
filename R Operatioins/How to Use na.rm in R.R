# Example 1: Use na.rm with Vectors
# define vector with some missing values
x <- c(3, 4, 5, 5, 7, NA, 12, NA, 16)

# Each of these functions returns a value of NA
mean(x)
sum(x)
max(x)
sd(x)

# define vector with some missing values
# x <- c(3, 4, 5, 5, 7, NA, 12, NA, 16)

mean(x, na.rm = TRUE)
sum(x, na.rm = TRUE)
max(x, na.rm = TRUE)
sd(x, na.rm = TRUE)

# Example 2: Use na.rm with Data Frames
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, 7, NA, 3, 2),
                 var3=c(3, 3, NA, 6, 8),
                 var4=c(1, 1, 2, 8, NA))

# view data frame
df

# calculate mean of each column
apply(df, 2, mean, na.rm=TRUE)

# calculate sum of each column
apply(df, 2, sum, na.rm=TRUE)

# calculate max of each column
apply(df, 2, max, na.rm=TRUE)

# calcualte standard deviation of each column
apply(df, 2, sd, na.rm=TRUE)






















