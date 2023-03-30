# Method 1: Transpose Data Frame Using Base R
# create data frame
df <- data.frame(A = c(1, 2, 3, 4, 5),
                 B = c(6, 7, 8, 9, 10),
                 C = c(11, 12, 13, 14, 15))

# define row names
row.names(df) <- c("One", "Two", "Three", "Four", "Five")

# view data frame
df


# transpose data frame
t(df)

# Method 2: Transpose Data Frame Using data.table
# create data frame
df <- data.frame(A = c(1, 2, 3, 4, 5),
                 B = c(6, 7, 8, 9, 10),
                 C = c(11, 12, 13, 14, 15))

# define row names
row.names(df) <- c("One", "Two", "Three", "Four", "Five")

# view data frame
df

# load data.table 
library("data.table")
# transpose data frame
df_t <- transpose(df)

# redefine row and column names
rownames(df_t) <- colnames(df)
colnames(df_t) <- rownames(df)

# display transposed data frame
df_t

























