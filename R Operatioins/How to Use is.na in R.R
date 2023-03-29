# Example 1: Use is.na() with Vectors
# define vector with some missing values
x <- c(3, 5, 5, NA, 7, NA, 12, 16)

# check if each individual value is NA
is.na(x)

# count total Na values
sum(is.na(x))

# identify positions of NA values
which(is.na(x))

# Example 2: Use is.na() with Data Frames
# create data frame
df <- data.frame(var1=c(1, 3, 3, 4, 5),
                 var2=c(7, NA, NA, 3, 2),
                 var3=c(3, 3, 6, NA, 8),
                 var4=c(NA, 1, 2, 8, 9))

# view data frame
df

# find total NA values in data frame
sum(is.na(df))

# find total NA values by column
sapply(df, function(x) sum(is.na(x)))
