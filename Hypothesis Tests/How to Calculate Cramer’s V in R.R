# Cramer's V is a measure of the strength of association
# between two nominal variables.
# 0 indicates no association between the two variables.
# 1 indicates a strong association between the two variables.

# create 2x2 table
data = matrix(c(7,9,12,8), nrow = 2)
# view dataset
data

# load recompanion library
install.packages("rcompanion")
library("rcompanion")

# calculate Cramer's V
cramerV(data)

# we can also produce a confidence interval for
# Cramer's V by indicating ci = TRUE
cramerV(data, ci=TRUE)

# Example 2: Cramer's V for Larger Tables
# create 2x3 table
data = matrix(c(6, 9, 8, 5, 12, 9), nrow=2)

# view dataset
data

# calculate Cramer's V
cramerV(data)

