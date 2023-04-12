# This error usually occurs when you attempt to assign 
# values in one column using values from another column,
# but there happen to be NA values present.

# how to reproduce the Error
# create data frame
df <- data.frame(A=c(3, 4, 4, NA, 5, 8, 5, 9),
                 B=c(12, 13, 7, 7, 12, 11, 15, 7))

# view data frame
df

# attempt to assign column B a value of 10 where A ia equal to 5
df[df$A == 5, ]$B <- 10

# How to Avoid the Error
# Use %in% Operator
# assign column B a value of 10 where A is equal to 5
df[df$A %in% 5, ]$B <- 10

# view updated data frame
df

# Use is.na()

# assign column B a value of 10 where A is equal to 5
df[!is.na(df$A) & df$A == 5, ]$B <- 10

# view updated data frame
df
