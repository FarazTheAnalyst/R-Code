# A two sample t-test is used to test whether or not the means of 
# two populations are equal.

# create vectors to hold plant heights form each sample
group1 <- c(8, 8, 9, 9, 9, 11, 12, 13, 13, 14, 15, 19)
group2 <- c(11, 12, 13, 13, 14, 14, 14, 15, 16, 18, 18, 19)

# perform two sample t-test
t.test(group1, group2, var.equal = TRUE)

# Technical Notes 
# the t.test() function in R uses the folloeing syntax
# t.test(x, y, alternative = "two.sided", mu=0, paired = FALSE, var.equal = FALSE,
       # conf.level = 0.95)
