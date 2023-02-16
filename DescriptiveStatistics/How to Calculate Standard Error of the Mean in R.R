# install and load plotrix library
install.packages("plotrix")
library("plotrix")

# define dataset
data <- c(3, 4, 4, 5, 7, 8, 12, 14, 14, 15, 17, 19, 22, 24, 24, 24, 25, 28, 28, 29)
std.error(data)

# define your own function
# define standard error of mean function
std.error <- function(x) sd(x)/sqrt(length(x))

# define dataset
data <- c(3, 4, 4, 5, 7, 8, 12, 14, 14, 15, 17, 19, 22, 24, 24, 24, 25, 28, 28, 29)
std.error(data)

# define dataset we changed the last value in  dataset
data <- c(3, 4, 4, 5, 7, 8, 12, 14, 14, 15, 17, 19, 22, 24, 24, 24, 25, 28, 28, 150)

# calculate standard error of the mean
std.error(data)

# define first dataset and find SEM
data1 <- c(1, 2, 3, 4, 5)
std.error(data1)

# define second dataset and find SEM
data2 <- c(1, 2, 3, 4, 5, 1, 2, 3, 4, 5)
std.error(data2)


















