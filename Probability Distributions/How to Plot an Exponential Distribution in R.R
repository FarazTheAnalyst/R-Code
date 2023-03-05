# plotting a probability density function
curve(dexp(x, rate=1.5), from = 0, to=10)

# plotting a cumulative distribution function
curve(pexp(x, rate=.5), from=0, to=10, col="blue")
  
# plot CDF curves
curve(pexp(x, rate = .5), from = 0, to=10, col="blue")
curve(pexp(x, rate = 1), from=0, to=10, col='red', add=TRUE)
curve(pexp(x, rate = 1.5), from=0, to=10, col="green", add = TRUE)
