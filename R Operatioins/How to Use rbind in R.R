# Example 1: Rbind Vectors into a Matrix
# create two vectors
a <- c(1, 3, 3, 4, 5)
b <- c(7, 7, 8, 3, 2)

# rbind the two vectors into a matrix
new_matrix <- rbind(a, b)

# view matrix 
new_matrix

# Example 2: Rbind Vector to a Data Frame
# create data frame
df <- data.frame(a=c(1, 3, 3, 4, 5),
                 b=c(7, 7, 8, 3, 2),
                 c=c(3, 3, 6, 6, 8))

# define vector
d <- c(11, 14, 16)

# rbind vector to data frame
df_new <- rbind(df, d)

# view data frame
df_new

# Example 3: Rbind Multiple Vectors to a Data Frame
# create data frame
df <- data.frame(a=c(1, 3, 3, 4, 5),
                 b=c(7, 7, 8, 3, 2),
                 c=c(3, 3, 6, 6, 8))

# define vectors
d <- c(11, 14, 16)
e <- c(34, 35, 36) 

# rbind vectors to data frame
df_new <- rbind(df, d, e)

# view data frame
df_new

# Example 4: Rbind Two Data Frames
# create two data frame
df1 <- data.frame(a=c(1, 3, 3, 4, 5),
                  b=c(7, 7, 8, 3, 2),
                  c=c(3, 3, 6, 6, 8))

df2 <- data.frame(a=c(11, 14, 16, 17, 22),
                  b=c(34, 35, 36, 36, 40),
                  c=c(2, 2, 5, 7, 8))

# rbind two data frames into  one data frame
df_new <- rbind(df1, df2)

# view data frame
df_new















