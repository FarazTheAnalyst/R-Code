# probability density function for a t distribution with 10
# degrees of freedom 
curve(dt(x, df=10), from=-4, to=4)

# modifying 
curve(dt(x, df=10), from=-4, to=4,
      main="t Distribution (df=10)", # add title
      ylab = "Density", #change y-axis label
      lwd=2, #increase line width to 2
      col="steelblue",) #change line color to steelblue

# adding more than one curve to graph to compare t distributions with different
# degress of freedom
curve(dt(x, df=6), from=-4, to = 4, col="blue")
curve(dt(x, df=10), from=-4, to =4, col="red", add = TRUE)
curve(dt(x, df=30), from=-4, to = 4, col="red", add = TRUE)

# add legend
legend(-4, .3, legend = c("df=6", "df=10", "df=30"),
       col=c("blue", "red", "green"), lty = 1, cex = 1.2)
