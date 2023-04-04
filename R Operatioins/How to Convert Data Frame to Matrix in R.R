# Method 1: Convert Data Frame of Numeric Columns to Matrix
# create data frame
df <- data.frame(points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))
                 
# view data frame
df

# convert data frame to matrix
mat <- as.matrix(df)

# view matrix
mat

# view class of mat
class(mat)

# Method 2: Convert Data Frame with Characters / Factors
# to Matrix

# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34))

# view data frame
df

# convert data frame to matrix
mat <- data.matrix(df)

# view matrix
mat

# view class of mat
class(mat)
