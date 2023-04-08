#define character vector
x <- c('1', '2', '3', NA, '4', 'Hey')

#convert to numeric vector
x_numeric <- as.numeric(x)

#display numeric vector
print(x_numeric)

#define two vectors
a <- c(1, 2, 3, 4, 5)
b <- c(6, 7, 8, 9)

#add the two vectors
a + b


# Method 1: Suppress Warnings on Specific Line
# define character vector
x <- c('1', '2', '3', NA, '4', 'Hey')

# convert to numeric vector
suppressWarnings(x_numeric <- as.numeric(x))

# display numeric vector
print(x_numeric)

# define two vectors
a <- c(1, 2, 3, 4, 5)
b <- c(6, 7, 8, 9)

# add the two vectors
a + b

# method2: suppress warnings Globally
# We can wrap the suppressWarnings({}) function around the entire
# chunk of code to suppress all warnings globally:
suppressWarnings({
  # define character vector
  x <- c('1', '2', '3', NA, '4', 'Hey')
  
  # convert to numeric vector
  suppressWarnings(x_numeric <- as.numeric(x))
  
  # display numeric vector
  print(x_numeric)
  
  # define two vectors
  a <- c(1, 2, 3, 4, 5)
  b <- c(6, 7, 8, 9)
  
  # add two vectors
  a + b
  })
