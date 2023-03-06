# left-tailed test
# find p-value z-score = .77
pnorm(q=-0.77, lower.tail = TRUE)

# right-tailed test z-score = 1.87
pnorm(1.87, lower.tail=FALSE)

# two=tailed test z-score = 1.24
# find p-value for two-tailed test
2*pnorm(q=1.24, lower.tail = FALSE)
