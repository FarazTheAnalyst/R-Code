# Example 1: Add Superscripts to Axis Labels
# define data 
x <- c(1, 2, 3, 4, 5, 6, 7, 8)
y <- c(9, 12, 14, 16, 15, 19, 26, 29)

# define x and y-axis labels with superscripts
x_expression <- expression(x^3 ~ variable ~ label)
y_expression <- expression(y^3 ~ variable ~ label)

# create plot
plot(x, y, xlab = x_expression, ylab = y_expression)

# adjust par valeus (default is (3, 0, 0))
par(mgp=c(2.5, 1, 0))

# create plot
plot(x, y, xlab = x_expression, ylab = y_expression)

# Example 2: Add Subscripts to Axis Labels

# define data
x <- c(1, 2, 3, 4, 5, 6, 7, 8)
y <- c(9, 12, 14, 16, 15, 19, 26, 29)

# define x and y-axis labels with superscripts
x_expression <- expression(x[3] ~ variable ~ label)
y_expression <- expression(y[3] ~ variable ~ label)

# create plot 
plot(x, y, xlab = x_expression, ylab = y_expression)

# define data
x <- c(1, 2, 3, 4, 5, 6, 7, 8)
y <- c(9, 12, 14, 16, 15, 19, 26, 29)

# create plot
plot(x, y)

# define label with superscript to add to plot
R2_expression <- expression(paste(" ", R^2 , "= ", .95))

# add text to plot
text(x = 2, y = 25, label = R2_expression)






















