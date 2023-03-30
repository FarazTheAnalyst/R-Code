# Method 1: Remove NA Values from Vector
# create vector with some NA values
data <- c(1, 4, NA, 5, NA, 7, 14, 19)

# remove NA values from vector
data <- data[!is.na(data)]

# view updated vector
data

# Method 2: Remove NA Values When Performing Calculation Using na.rm
# create vector with some NA values
data <- c(1, 4, NA, 5, NA, 7, 14, 19)

# calculate max value and remove NA values
max(data, na.rm = T)

# calculate median and remove NA values
median(data, na.rm=T)

# Method 3: Remove NA Values When Performing Calculation Using na.omit
# create vector with some NA values
data <- c(1, 4, NA, 5, 7, 14, 19)

# calculate max value and omit NA values
max(na.omit(data))

# calculate median and omit NA values
median(na.omit(data))
