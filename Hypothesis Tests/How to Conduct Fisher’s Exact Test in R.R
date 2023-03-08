# Fisher's Exact Test is used to determine whether or not there is
# a significant association between two categorical variables.
# It is typically used as an alternative to the Chi-Square Test of Independence
# when one or more of the cell counts in a 2×2 table is less than 5

# create 2x2 dataset
data = matrix(c(2, 5, 9, 4), ncol = 2)

fisher.test(data)