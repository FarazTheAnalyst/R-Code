# Bold Font on Axis Labels of Plot
# define data
x <- c(1, 2, 3, 4, 4, 5, 6, 6, 7, 9)
y <- c(8, 8, 9, 10, 13, 12, 10, 11, 14, 17)

# create scatter plot with normal font for axis labels
plot(x, y, xlab = "X Label", ylab = "Y Label")

# define data 
x <- c(1, 2, 3, 4, 4, 5, 6, 6, 7, 9)
y <- c(8, 8, 9, 10, 13, 12, 10, 11, 14, 17)
plot(x, y, xlab=substitute(paste(bold("X Label"))),
     ylab = substitute(paste(bold("Y Label"))))

# Bold Font with Text in Plot
#define data
x <- c(1, 2, 3, 4, 4, 5, 6, 6, 7, 9)
y <- c(8, 8, 9, 10, 13, 12, 10, 11, 14, 17)

# create scatterplot
plot(x, y)

# add normal text at location x=3, y=14
text(3, 14, "This is some normal text")
# add bold text at location x=3, y=16
text(3, 16, substitute(paste(bold("This is some bold text"))))

