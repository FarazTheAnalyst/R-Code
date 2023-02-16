#define data
marketing <- c(3, 4, 5, 5, 7, 9, 13, 15, 12, 10, 8, 8)
revenue <- c(21, 19, 22, 24, 25, 29, 30, 34, 37, 40, 35, 30)

# calculate corss correlation
ccf(marketing, revenue)

# display corss correlation values
print(ccf(marketing, revenue))
