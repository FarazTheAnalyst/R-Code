# quantile()
quantile(data, probs = seq(.1, .9, by=.1))

# calculate decile in R
# create dataset
data <- c(56, 58, 64, 67, 68, 73, 78, 83, 84, 88,
          89, 90, 91, 92, 93, 93, 94, 95, 97, 99)
# calculate deciles of dataset
quantile(data, probs = seq(.1, .9, by = .1))

# place values into deciles in R
library(dplyr)

# create dataset
data <- data.frame(values=c(56, 58, 64, 67, 68, 73, 78, 83, 84, 88,
                            89, 90, 91, 92, 93, 93, 94, 95, 97, 99))

# place each valeu into a decile
data$decile <- ntile(data, 10)

# veiw data
data
