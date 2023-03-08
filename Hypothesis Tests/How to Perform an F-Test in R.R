# Method 1:F-Test in R
# define the two groups
x <- c(18, 19, 22, 25, 27, 28, 41, 45, 51, 55)
y <- c(14, 15, 15, 17, 18, 22, 25, 25, 27, 34)

# perform an F-test to determine in the variance are equal
var.test(x, y)

# Method 2: F- Test in R
# define the two groups
data <- data.frame(values=c(18, 19, 22, 25, 27, 28, 41, 45, 51, 55,
                            14, 15, 15, 17, 18, 22, 25, 25, 27, 34),
                   group=rep(c("A", "B"), each=10))

# perform an F-test to determine in the variances are equal
var.test(values ~ group, data = data)

# When to use the F-test
# 1. Do two samples come from populations with equal variances?
# 2. Does a new treatment or process reduce the variability of
# some current treatment or process?