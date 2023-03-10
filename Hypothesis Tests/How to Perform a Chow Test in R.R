# A Chow test is used to test whether the coefficients in two
# different regression models on different datasets are equal.

# create the data
data <- data.frame(x = c(1, 1, 2, 3, 4, 4, 5, 5, 6, 7, 7, 8, 8, 9, 10, 10,
                         11, 12, 12, 13, 14, 15, 15, 16, 17, 18, 18, 19, 20, 20),
                   y = c(3, 5, 6, 10, 13, 15, 17, 14, 20, 23, 25, 27, 30, 30, 31,
                         33, 32, 32, 30, 32, 34, 34, 37, 35, 34, 36, 34, 37, 38, 36))

# view first six rows of data
head(data)

# visualize the data
# load ggplot2 visualization package
library("ggplot2")

# create scatterplot
ggplot(data, aes(x=x, y=y)) +
  geom_point(col="coral2", size=3)

# From the scatterplot we can see that the pattern in the data
# appears to change at x = 10. Thus, we can perform the Chow
# test to determine if there is a structural break point in
# the data at x = 10.

# perform the Chow Test
# install & load strucchange package
install.packages("strucchange")
library("strucchange")

# perfrm Chow test
sctest(data$y ~ data$x, type = "Chow", point = 10)



























