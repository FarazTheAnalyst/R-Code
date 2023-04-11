# This error occurs when you attempt to create a variable in
# R that starts with a number.

# How to Reproduce the Error
# attempt to read text file into R
5 <- read.table("data.txt")

# How to Avoid the Error

# read test file into R
data5 <- read.table("data.txt")

# view contents of text file
data5

# read text file into R
.data5 <- read.table("data.txt")

# view contents of text file
.data5
