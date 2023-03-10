# create 2x2 table
data = matrix(c(4, 8, 9, 4), nrow = 2)

# view dataset
data

# load psych package
library("psych")

# calculate Phi Coefficient
phi(data)

# calculate Phi Coefficient and round to 6 digits
phi(data, digits = 6)
