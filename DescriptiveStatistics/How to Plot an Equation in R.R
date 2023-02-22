# plot equation in Base in R
curve(2*x^2+5, from = 1, to = 50, xlab = "x", ylab = "y")

# plot points by simply type="p" in the curve()
curve(2*x^2 + 5, from = 1, to = 50, xlab = "x", ylab = "y", type = p)

# plot equation in ggplot2
library("ggplot2")
my_equation <- function(x){2*x^2+5}

# plot equation
ggplot(data.frame(x=c(1, 50)), aes(x=x)) +
  stat_function(fun = my_equation)


