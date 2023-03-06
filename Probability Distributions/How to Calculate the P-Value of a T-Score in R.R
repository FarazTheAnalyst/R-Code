# left-tailed test
# find p-value with alpha=0.05
pt(q=-.77, df=15, lower.tail = TRUE)

# right-tailed test
# find p-value with = alpha=0.05
pt(q=1.87, df=24, lower.tail = FALSE)

# two-tailed test
# find two-tailed p-value
2*pt(q=1.24, df=22, lower.tail = FALSE)
