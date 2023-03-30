# Example 1: round() Function in R
# define vector of data
data <- c(.3, 1.03, 2.674, 5, 8.91)

# round values to 1 decimal place
round(data, digits = 1)

# round values to 2 decimal places
round(data, digits = 2)

# Example 2: signif() Function in R
# define vector of data
data <- c(.3, 1.03, 2.67, 5, 8.91)

# round values to 33 significant digits
signif(data, digits = 3)

# Example 3: ceiling() Function in R
# define vector of data
data <- c(.3, 1.03, 2.67, 5, 8.91)

# round values up to nearest integer
ceiling(data)

# Example 4: floor() Function in R
# define vector of data
data <- c(.3, 1.03, 2.67, 5, 8.91)

# round values down to nearest integer
floor(data)

# Example 5: trunc() Function in R
# define vector od data 
data <- c(-.3, 1.3,  1.03, 2.67, 5, 8.91)

# truncate decimal places from values
trunc(data)
