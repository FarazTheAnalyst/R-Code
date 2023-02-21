# count True values using sum()
# create logical vector
x <- c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, NA, TRUE)

# count TRUE values in vector
sum(x, na.rm = TRUE)

# count TRUE values using summary()
# create logical vector
x <- c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, NA, TRUE)

# count TRUE, FALSE, and NA, values in vector
summary(x)

# create logical vector
x <- c(TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, NA, TRUE)

# count TRUE values in vector
summary(x)["TRUE"]
