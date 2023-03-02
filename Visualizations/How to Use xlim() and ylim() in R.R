# use xlim() to  set x-axis limits
# define data frame
df <- data.frame(x=c(1, 3, 4, 5, 7, 9),
                 y=c(7, 7, 8, 12, 15, 19))

# create scatterplot with x=axis limits ranging from 0 to 20
plot(df$x, df$y, xlim = c(1, 20))

# use ylim() to set y-axis limits
# define data frame
df <- data.frame(x=c(1, 3, 4, 5, 7, 9),
                 y=c(7, 7, 8, 12, 15, 19))

# create scatter plot with y=axis limits ranging from 0 to 30
plot(df$x, df$y, pch=19, ylim=c(0, 30))

# use xlim() and ylim() to set axis limits
# define data frame
df <- data.frame(x=c(1, 3, 4, 5, 7, 9),
                 y=c(7, 7, 8, 12, 15, 19))

# create scatterplot and specify both x-axis limits and y-axis limits
plot(df$x, df$y, pch=19, col="steelblue", xlim=c(0, 20), ylim=c(0, 30))
