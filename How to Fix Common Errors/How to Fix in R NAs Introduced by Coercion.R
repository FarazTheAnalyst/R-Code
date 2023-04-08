# How to Reproduce the Warning Message
# define character vector
x <- c('1', '2', '3', NA, '4', 'Hey')

# convert to numeric vector
x_num <- as.numeric(x)

# display numeric vector
x_num

# Method #1: Suppress Warnings
# define character vector
x <- c('1', '2', '3', NA, '4', 'Hey')

# convert to convert to numeric vector, suppressing warnings
suppressWarnings(x_num <- as.numeric(x))

# dispaly numeric vector
x_num

# Method #2: Replace Non-Numeric Values
# defne character vector
x <- c('1', '2', '3', '4', 'Hey')

# replace non-numeric values with 0
x <- gsub("Hey", "0", x)

# convert to numeric vector
x_num <- as.numeric(x)

# display numeric vector
x_num
