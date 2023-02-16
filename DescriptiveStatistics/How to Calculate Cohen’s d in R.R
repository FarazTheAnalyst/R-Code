# use lsr package
install.packages("lsr")
library(lsr)

# define plant growth values for each group
group1 <- c(8, 9, 11, 11, 12, 14, 15, 16, 16, 18, 20, 21)
group2 <- c(7, 9, 10, 10, 11, 11, 12, 14, 14, 16, 20, 23)

# calculate Cohen's d
cohensD(group1, group2)

# use effsize package
install.packages("effsize")
library(effsize)

# define plant growth values for each group
group1 <- c(8, 9, 11, 11, 12, 14, 15, 16, 16, 18, 20, 21)
group2 <- c(7, 9, 10, 10, 11, 11, 12, 14, 14, 16, 20, 23)

# calculate Cohen's d
cohen.d(group1, group2)








