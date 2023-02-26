# default histogram
library("lattice")

# create data
data <- c(0, 0, 2, 3, 4, 4, 5, 6, 7, 12, 12, 14)

# create relative frequency histogram
histogram(data)

# modifying the histogram
histogram(data, 
          main = "Points per Game by Player", 
          xlab = "Points per Game",
          col = "steelblue")

# modifying the numbers of bins for more granular look
histogram(data,
          main="Points per Game by Player",
          xlab = "Points per Game",
          col="steelblue",
          breaks = 15)

# modify the number of bins 
histogram(data,
          main="Points per Game by player",
          xlab = "Points per Game",
          col = "steelblue",
          breaks = 3)
