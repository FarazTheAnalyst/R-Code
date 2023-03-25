# One of the most common errors that you'll encounter in R is:
# undefined columns selected
# This error occurs when you try to select a subset of a data frame 
# and forget to add a comma.

# create data frame with three variables
data <- data.frame(var1 = c(0, 4, 2, 2, 5),
                   var2 = c(5, 5, 7, 8, 9),
                   var3 = c(2, 7, 9, 9, 7))

# view DataFrame
data

# this will through error
data[data$var1>3]

# adding comma
data[data$var1>3, ]

# equivalent command
data[data$var1>3, 1:3]
