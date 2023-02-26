# create a basic histogram
# define  vector of data
data <- c(1, 2, 2, 3, 4, 4, 4, 5, 5, 6, 7, 10, 11, 13, 16, 16, 16)

# create histogram of data with default sturges rule
hist(data, col = "lightblue")

# specify number of bins to use in histogram
# define vector of data
data <- c(1, 2, 2, 3, 4, 4, 4, 5, 5, 6, 7, 10, 11, 13, 16, 16, 16)

# create histograms with 6 bins
hist(data, col = "lightblue", breaks = seq(min(data), max(data), length.out = 7))

# define vector of data
data <- c(1, 2, 2, 3, 4, 4, 4, 5, 5, 6, 7, 10, 11, 13, 16, 16, 16)

# create histograms with 3 bins
hist(data, col="lightblue", breaks=seq(min(data), max(data), length.out=4))
                   
# define vector of data
data <- c(1, 2, 2, 3, 4, 4, 4, 5, 5, 6, 7, 10, 11, 13, 16, 16, 16)

# create histogram with 15 bins visualizing the noise
hist(data, col = "lightblue", breaks = seq(min(data), max(data), length.out =16))

