# italic Font in Title of plot
# define data
x <- c(1, 2, 3, 4, 4, 5, 6, 6, 7, 9)
y <- c(8, 8, 9, 10, 13, 12, 10, 11, 14, 17)

# create scatterplot with title in italics
plot(x, y, main = substitute(paste(italic("Scatterplot of x vs. y"))))

# create scatterplot with only some of title in italics
plot(x, y, main=substitute(paste(italic("Scatterplot of"), " x vs. y")))

# create scatterplot with axes labels in italics
plot(x, y, xlab = substitute(paste(italic("X Label"))),
     ylab = substitute(paste(italic("Y Label"))))

# italic font with text in plot
# define data
x <- c(1, 2, 3, 4, 4, 5, 6, 6, 7, 9)
y <- c(8, 8, 9, 10, 13, 12, 10, 11, 14, 17)

# create scatterplot
plot(x, y)

# add italic text at location x=3, y=16
text(3, 16, substitute(paste(italic("This is some italic text"))))
