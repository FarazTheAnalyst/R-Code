# Example 1: Cbind Vectors into a Matrix
# create two vectors
a <- c(1, 3, 3, 4, 5)
b <- c(7, 7, 8, 3, 2)

# cbind the two vectors into a matrix
new_matrix <- cbind(a, b)

# view matrix
new_matrix

# view class of new_matrix
class(new_matrix)

# Example 2: Cbind Vector to a Data Frame
# create data frame
df <- data.frame(a=c(1, 3, 3, 4, 5),
                 b=c(7, 7, 8, 3, 2),
                 c=c(3, 3, 6, 6, 8))

# define vector
d <- c(11, 14, 16, 17, 22)

# cbind vector to data frame
df_new <- cbind(df, d)

# view data frame
df_new

# Example 3: Cbind Multiple Vectors to a Data Frame
# create data frame
df <- data.frame(a=c(1, 3, 3, 4, 5),
                 b=c(7, 7, 8, 3, 2),
                 c=c(3, 3, 6, 6, 8))

# define vectors
d <- c(11, 14, 16, 17, 22)
e <- c(34, 35, 36, 36, 40)

# cbind vectors to data frame
df_new <- cbind(df, d, e)

# view data frame
df_new

# Example 4: Cbind Two Data Frames
# create two data frame
df1 <- data.frame(a=c(1, 3, 3, 4, 5),
                  b=c(7, 7, 8, 3, 2),
                  c=c(3, 3, 6, 6, 8))

df2 <- data.frame(d=c(11, 14, 16, 17, 22),
                  e=c(34, 35, 36, 36, 40))

# cbind  two data frames into one data frame
df_new <- cbind(df1, df2)

# view data frame
df_new






















