# create data frame
data <- data.frame(var1 = c(0, NA, 2, 2, 5),
                   var2 = c(5, 5, 7, 8, 9),
                   var3 = c(2, 7, 9, 9, 7))

# view data frame
data

# find sum of first and third columns
rowSums(data[ , c(1, 3)], na.rm = TRUE)

# assing row sums to new variable named row_sum
data$row_sum <- rowSums(data[ , c(1, 3)], na.rm=TRUE)

# view data frame
data

# find the sum of all columns
data$new <- rowSums(data, na.rm = TRUE)

# view data frame
data














