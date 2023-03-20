# In statistics, the term lowess refers to "locally weighted 
# scatterplot smoothing" - the process of producing a smooth 
# curve that fits the data points in a scatterplot.

# create the data
df <- data.frame(x=c(1, 1, 2, 2, 3, 4, 6, 6, 7, 8, 10, 11, 11, 12, 13, 14),
                 y=c(4, 7, 9, 10, 14, 15, 19, 16, 17, 21, 22, 34, 44, 40, 43, 45))

# plot the data
plot(df$x, df$y)

# plot the lowess curve to plot
lines(lowess(df$x, df$y), col = "red")

# adjust the smoother span (optional)
# create scatterplot
plot(df$x, df$y)

# add lowess smoothing curves
lines(lowess(df$x, df$y), col='red')
lines(lowess(df$x, df$y, f=0.3), col = "purple")
lines(lowess(df$x, df$y, f= 3), col="steelblue")

# add legend to plot
legend("topleft",
       col = c("red", "purple", "steelblue"),
       lwd = 2,
       c("Smoother = 1", "Smoother = 0.3", "Smoother = 3"))
