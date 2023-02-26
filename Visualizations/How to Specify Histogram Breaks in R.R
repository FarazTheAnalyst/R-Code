# default sturges' Rule
# optimal bins = ceiling(log2n +1)

# default bins of struges' Rule
hist(data)

# giving R suggestion to use 7 bins
hist(data, breaks = 7)

# create histogram with 7 bins
hist(data, breaks = seq(min(data), max(data), length.out = 8))

#create vector of 16 values
data <- c(2, 3, 3, 3, 4, 4, 5, 6, 8, 10, 12, 14, 15, 18, 20, 21)

# create histogram
hist(data)

# attempt to create histogram with 7 bins
hist(data, breaks = 7)

# create histogram with 7 bins
hist(data, breaks = seq(min(data), max(data), length.out = 8))
