# create dataset
data <- c(1, 3, NA, 5, 16, 18, 22, 25, 29)

# calculate range
max(data, na.rm = TRUE) - min(data, na.rm = TRUE)

# create dataset
data <- c(1, 3, NA, 5, 16, 18, 22, 25, 29)

# calculate range values 
range(data, na.rm = TRUE)

# calculate the range of single variable
# create data frame
df <- data.frame(x=c(1, 3, NA, 5, 16, 18, 22, 25),
                 y=c(NA, 4, 8, 9, 14, 23, 29, 31),
                 z=c(2, NA, 9, 4, 13, 17, 22, 24))

# find range of variable x in the data frame
max(df$x, na.rm = TRUE) - min(df$x, na.rm = TRUE)

# calculate the range of multiple variables
# create data frame
df <- data.frame(x=c(1, 3, NA, 5, 16, 18, 22, 25),
                 y=c(NA, 4, 8, 9, 14, 23, 29, 31),
                 z=c(2, NA, 9, 4, 13, 17, 22, 24))

# find range of variable x and y in the data frame
sapply(df[c("x", "y")], function(df) max(df, na.rm=TRUE) - min(df, na.rm = TRUE))

# find range of all variables in the data frame
sapply(df, function(df) max(df, na.rm = TRUE) - min(df, na.rm = TRUE))


# calculate the range of entire data frame
# create data frame
df <- data.frame(x=c(1, 3, NA, 5, 16, 18, 22, 25),
                 y=c(NA, 4, 8, 9, 14, 23, 29, 31),
                 z=c(2, NA, 9, 4, 13, 17, 22, 24))

# find range of all values in entire data frame
max(df, na.rm = TRUE) - min(df, na.rm = TRUE)
















