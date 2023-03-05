# probability density function for a Weibull distribution
curve(dweibull(x, shape = 2, scale = 1), from=0, to=4)

# modify plot
curve(dweibull(x, shape = 2, scale = 1), from = 0, to = 4,
      main="Weibull Distribtion (shape = 2, scale = 1)",  #add title
      ylab="Density", #Change y-axis label
      lwd=2, #increase line width to 2
      col="darkblue") #change line color to darkblue

# comparing different shape and scales
curve(dweibull(x, shape=2, scale=1), from = 0, to = 4, col="red")
curve(dweibull(x, shape=1.5, scale = 1), from=0, to=4, col="green", add = TRUE)

# create density plot
curve(dweibull(x, shape=2, scale=1), from = 0, to = 4, col="red")
curve(dweibull(x, shape=1.5, scale = 1), from=0, to=4, col="green", add = TRUE)

# add legend
legend(2, .7, legend = c("shape=2, scale=1", "shape=1.5, scale=1"), 
       col=c("red", "blue"), lty = 1, cex = 1.2)
