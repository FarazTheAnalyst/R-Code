# Example 1: Remove Elements from Character Vector
# define vector
x <- c("Mavs", "Nets", "Mawks", "Bucks", "Spurs", "Suns")

# remove "Mavs", and "Spurs", from vector
x <- x[! x %in% c("Mavs", "Spurs")]

# view updated vector
x

# Example 2: Remove Elements from Numeric Vector 
# define numberic vector
x <- c(1, 2, 2, 2, 3, 4, 5, 5, 7, 7, 8, 9, 12, 12, 13)

# remove 1, 4, and 5
x <- x[! x %in% c(1, 4, 5)]

# view updated vector
x

# define numeric vector
x <- c(1, 2, 2, 2, 3, 4, 5, 5, 5, 7, 7, 8, 9, 12, 12, 13)

# remove values between 2 and 10
x <- x[! x %in% 2:10]

# view updated vector
x

# define numberic vectro
x <- c(1, 2, 2, 2, 3, 4, 5, 5, 7, 7, 8, 9, 12, 12, 13)

# remove values less than 3 or greater than 10
x <- x[!(x < 3 | x > 10)]

# view updated vector
x






















