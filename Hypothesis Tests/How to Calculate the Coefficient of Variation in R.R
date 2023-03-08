# A coefficient of variation, often abbreviated as CV, is a way
# to measure how spread out values are in a dataset relative
# to the mean. It is calculated as:

# Example 1: Coefficient of Variation for a Single Vector
# create vector of data
data <- c(88, 85, 82, 97, 67, 77, 74, 86, 81, 95, 77, 88, 85, 76, 81, 82)

# calculate CV
cv <- sd(data) / mean(data)*100

# display cv
cv

# Example 2: Coefficient of Variation for Several Vectors
# create data frame
data <- data.frame(a=c(88, 85, 82, 97, 67, 77, 74, 86, 81, 95),
                   b=c(77, 88, 85, 76, 81, 82, 88, 91, 92, 99),
                   c=c(67, 68, 68, 74, 74, 76, 76, 77, 78, 84))

# calculate data frame
data <- data.frame(a=c(88, 85, 82, 97, 67, 77, 74, 86, 81, 95),
                   b=c(77, 88, 85, 76, 81, 82, 88, 91, 92, 99),
                   c=c(67, 68, 68, 74, 74, 76, 76, 77, 78, 84))

# calculate CV for each column in data frame
sapply(data, function(x) sd(x) / mean(x)*100)

# create data frame

data <- data.frame(a=c(88, 85, 82, 97, 67, 77, 74, 86, 81, 95),
                   b=c(77, 88, 85, 76, 81, 82, 88, 91, NA, 99),
                   c=c(67, 68, 68, 74, 74, 76, 76, 77, 78, NA))
# calculate CV for each column in data frame
sapply(data, function(x) sd(x, na.rm = TRUE) / mean(x, na.rm=TRUE)*100)




















