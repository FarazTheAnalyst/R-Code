# use ncol to count number of columns in data frame
# create data frame
df <- data.frame(team=c("A", "B", "C", "D","F"),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# display number of columns in data frame
ncol(df)

# use ncol to count number of columns in matrix

# create matrix
mat <- matrix(1:21, nrow = 3)

# display total number of columns
ncol(mat)

# display number of rows
nrow(df)

# display number of columns
ncol(df)

# display dimensions
dim(df)













