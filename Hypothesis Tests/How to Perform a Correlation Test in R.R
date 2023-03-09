# One way to quantify the relationship between two variables is
# to use the Pearson correlation coefficient, which is a measure
# of the linear association between two variables.

# create two vectors
x <- c(2, 3, 3, 5, 6, 9, 14, 15, 19, 21, 22, 23)
y <- c(23, 24, 24, 23, 17, 28, 38, 34, 35, 39, 41, 43)

# create scatterplot
plot(x, y, pch=16)

# perform corrrelation test between the two vectors
cor.test(x, y)
