# Example: Convert Table to Data Frame in R
# create matrix with 4 columns
tab <- matrix(1:8, ncol=4, byrow=TRUE)

# define column names and row names of matrix
colnames(tab) <- c("A", "B", "C", "D")
rownames(tab) <- c("F", "G")

# convert matrix to table
tab <- as.table(tab)

# convert matrix to table
tab <- as.table(tab)

# view table
tab

# view class
class(tab)

# convert table to data frame
df <- data.frame(rbind(tab))
df

# view class data frame
class(df)

# change row names to list of numbers
row.names(df) <- 1:nrow(df)

# view updated data frame
df
