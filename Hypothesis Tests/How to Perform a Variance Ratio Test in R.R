# A variance ratio test is used to test whether or not two
# population variances are equal.

# create vectors to hold plant heights from each sample
group1 <- c(5, 6, 6, 8, 10, 12, 12, 13, 14, 15, 15, 17, 18, 18, 19)
group2 <- c(9, 9, 10, 12, 12, 13, 14, 16, 16, 19, 22, 24, 26, 29, 29)

# perform variance ration test
var.test(group1, group2)
