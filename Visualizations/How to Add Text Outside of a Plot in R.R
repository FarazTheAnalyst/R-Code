# add one text element ouside of plot
# define variables
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(4, 5, 5, 4, 6, 8, 12, 15, 19, 22)

# create scatterplot
plot(x, y)

# add text outside of plot
text(x=8, y=-0.1, "Some Text", xpd=NA)

# add multiple text elements outside of plot
# define variables
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(4, 5, 5, 4, 6, 8, 12, 15, 19, 22)

# create scatterplot
plot(x, y)

# add muptiple text elements oustside of plot
text(x=8, y=-0.2, "Below Plot", xpd=NA)
text(x=8, y=26, "Above Plot", xpd=NA)
