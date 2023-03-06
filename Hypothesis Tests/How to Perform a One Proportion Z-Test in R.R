# EXAMPLE one proportion z-test in R
# if n<=30: binom.test(x, n, p=0.5, alternative="two sided)
# our sample size is greater than 30, we can use the prop.test function
prop.test(64, n=100, p=0.60, alternative = 'two.sided')
