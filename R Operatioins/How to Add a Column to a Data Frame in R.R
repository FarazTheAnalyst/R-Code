# create data frame
df <- data.frame(a = c('A', 'B', 'C', 'D', 'E'),
                 b = c(45, 56, 54, 57, 59))

# view data frame
df

# Example 1: Use the $ Operator
# define new column to add
new <- c(3, 3, 7, 8)

# add column called "new"
df$new <- new

# view new data frame
df

# Example 2: Use Brackets
# define new column to add 
new <- c(3, 3, 6, 7, 8)

# add column called "new"
df["new"] <- new

# view new data frame
df

# Example 3: Use Cbind
# define new column to add 
new <- c(3, 3, 6, 7, 8)

# add new column called "new"
df_new <- cbind(df, new)

# view new data frame
df_new

# define new columns to add 
new1 <- c(3, 3, 6, 7, 8)
new2 <- c(13, 14, 16, 17, 20)

# add columns called "new1" and "new2"
df_new <- cbind(df, new1, new2)

# view new data frame
df_new

# set column names
# create data frame
df <- data.frame(a = c('A', 'B', 'C', 'D', 'E'),
                 b = c(45, 56, 54, 57, 59),
                 new1 = c(3, 3, 6, 7, 8),
                 new2 = c(13, 14, 16, 17, 20))

# view data frame
df

# specify column names
colnames(df) <- c("a", "b", "c", "d")

# view data frame
df



















