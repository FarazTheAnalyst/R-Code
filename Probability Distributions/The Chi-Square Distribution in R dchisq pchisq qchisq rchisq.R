# dchisq
# plot chi_square distribution with 5 degrees of freedom
curve(dchisq(x, df=10), from = 0, to = 20)

# pchisq
# calculate p-value for given test statistics with 2 degrees of freedom
1-pchisq(0.86404, df=2)

# qchisq
# For example, we can use the following code to find the Chi-Square 
# critical value that corresponds to a significance level of .05 with
# 13 degrees of freedom:
qchisq(p=.95, df=13)

# rchisq
# For example, we can use the following code to generate a list of 1,000 
# random values that follow a Chi-Square distribution with 5 
# degrees of freedom:

# make this example reproducible
set.seed(0)

# generate 1000 random values that follow chi-square dist with df=5
values <- rchisq(n=1000, df=5)

# view first five values
head(values)

# create histogram to visualize distribution of values
hist(values)
