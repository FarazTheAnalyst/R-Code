# find average across all columns
# create data frame
data <- data.frame(var1=c(0, NA, 2, 2, 5),
                   var2=c(5, 5, 7, 8, 9),
                   var3=c(2, 7, 9, 9, 7))

# view data frame
data

# find average value in each row 
rowMeans(data, na.rm=TRUE)

# assing row averages to new varible named row_mean
data$row_mean <- rowMeans(data, na.rm = TRUE)

# view data frame
data

# find average across specific columns
# find row across first two column
data$new <- rowMeans(data[ , c(1, 2)], na.rm = TRUE)

# view data frame
data

# find row averages across first and third columns
data$new <- rowMeans(data[ , c(1, 3)], na.rm = TRUE)

# view data frame
data




















