# How to Reproduce the Error
# define vector
x <- c(3, 4, 7, 7, 14, 19, 22, 28, 29, 30)

# attempt to access value in all rows and third column
x[, 3]

# attempt to access value in third row and all column
x[3, ]

# How to Fix the Error
# #access third value in vector
x[3]

# access values in poeitioins 2 through 5
x[2:5]
