# Example 1: Find Elements in a Vector
# create data 
data <- c(1, 2, 2, 3, 4, 4, 4, 5, 5, 12)

# find the position of all elements equal to 5
which(data == 5)

# find the position of all elements not equal to 5
which(data != 5)

# find the position of all elements with values between 2 and 4
which(data >= 2 & data <=4)

# find the position of all elements with valeus outside of 2 and 4
which(data < 2 | data > 4)

# Example 2: Count Occurrences in a Vector
# create data 
data <- c(1, 2, 2, 3, 4, 4, 4, 5, 5, 12)
# find number of elemnets greater than 4
length(which(data > 4))

# Example 3: Find Rows in a Data Frame
# create data frame
df <- data.frame(x = c(1, 2, 2, 3, 4, 5),
                 y = c(7, 7, 8, 9, 9, 9),
                 z = c('A', 'B', 'C', 'D', 'E', 'F'))

# view data frame
df

# return row that contains the max value in column x
df[which.max(df$x), ]

# return row that contains the min value in column x
df[which.min(df$x), ]

# Example 4: Subset by Rows in a Data Frame
# create data frame
df <- data.frame(x = c(1, 2, 2, 3, 4, 5),
                 y = c(7, 7, 8, 9, 9, 9),
                 z = c('A', 'B', 'C', 'D', 'E', 'F'))

# view data frame
df

# return subset of data frame where values in column y are greater than 8
df[which(df$y > 8), ]




















