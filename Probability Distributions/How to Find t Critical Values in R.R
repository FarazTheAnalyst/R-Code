# left-tailed test
# find t critical value
qt(p=.05, df=22, lower.tail = TRUE)

# right-tailed test
# find t critical value
qt(p=.05, df=22, lower.tail = FALSE)

# two-tailed test
# find two-tailed t critical values
qt(p=.05/2, df=22, lower.tail = FALSE)

