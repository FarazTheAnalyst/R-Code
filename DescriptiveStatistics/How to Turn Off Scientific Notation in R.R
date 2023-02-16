# turn off scientific notation as global setting
# perform multiplication
x <- 9999999 * 12345

# view results
x

# turn off scientific notation for all variables
options(scipen = 999)

# perform multiplication
x <- 9999999 * 12345

# view results
x

# turn scientific notation back on
options(scipen = 0)

# perform multiplication again
x <- 9999999 * 12345

# view results
x


# turn off scientific notation for one varible
# perform multiplication 
x <- 9999999 * 12345
format(x, scientific = F)

# perform another multiplication
y <- 9999999 * 999999

# view results
y
















