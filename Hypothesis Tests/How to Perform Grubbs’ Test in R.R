# Grubbs' Test is a statistical test that can be used to identify
# the presence of outliers in a dataset. To use this test, a dataset
# should be approximately normally distributed and have at least 7
# observations.

# load outliers package
install.packages("outliers")
library(outliers)
# create data
data <- c(5, 14, 15, 15, 14, 13, 19, 17, 16, 20, 22, 8, 21, 28, 11, 9, 29, 40)

# If we instead wanted to test whether the lowest value of '5' was an outlier,
# we could use the opposite=TRUE command:

# Perform Grubbs' Test to see if "5" is an outlier
grubbs.test(data, opposite = TRUE)


# Lastly, suppose we had two large values at one end of the dataset:
# 40 and 42. To test if both of these values are outliers, we could
# perform Grubbs' Test and specify that type=20:

# create dataset with two large values at one end: 40 and 42
data <- c(5, 14, 15, 15, 14, 13, 19, 17, 16, 20, 22, 8, 21, 28, 11, 9, 29, 40, 42)

# perform Grubbs' Test to see if both 40 and 42 are outliers
grubbs.test(data, type = 20)

