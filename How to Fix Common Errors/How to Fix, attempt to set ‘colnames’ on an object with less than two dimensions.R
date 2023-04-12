# This error usually occurs when you attempt to use the
# colnames() function to set the column names on an object
# that is not a data frame or matrix.
# How to Reproduce the Error
# create data frame
df <- data.frame(team=c('A', 'A', 'C', 'B', 'C', 'B', 'B', 'C', 'A'),
                 points=c(12, 8, 26, 25, 38, 30, 24, 24, 15),
                 rebounds=c(10, 4, 5, 5, 4, 3, 8, 18, 22))

# view data frame
df

# define new row to add to end of data frame
new_row <- c("D", 15, 11)

# attempt to define column names for new row 
colnames(new_row) <- colnames(df)

# How to Fix the Error
# define new row to add to end of data frame
new_row <- data.frame("D", 15, 11)

# define column names for new row
colnames(new_row) <- colnames(df)

# add new row to end of data frame
df <- rbind(df, new_row)

# view updated data frame
df
