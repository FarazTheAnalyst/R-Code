# How to Reproduce the Error
# define vector
data <- c('1.2', '1.4', '1.7', '1.9', '2.2', '2.5', '3', '3.4', '3.7', '4.1')

# attempt to create histogram to visualize distribution of values in vector
# we'll receive an error
hist(data)

# check class
class(data)

# How to Fix the Error
# convert vector from character to numeric
data_numeric <- as.numeric(data)

# create histogram
hist(data_numeric)

# verify this by checking the class
# chec`class
class(data_numeric)
