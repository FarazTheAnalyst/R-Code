# plot function curve using base R
# plot curve using x-axis range of 1 to 50
curve(x^3, from=1, to=50, xlab="x", ylab="y")

# modify curve
curve(x^3, from=1, to=50, xlab = "x", ylab="y", lwd=3, col="red", lty="dashed")

# plot function curve using ggplot2
library("ggplot2")

# define data frame
df <- data.frame(x=c(1, 100))

# define function
eq=function(x){x^3}

# plot curve in ggplot2
ggplot(data = df, aes(x=x)) +
  stat_function(fun=eq)

# plot curve in ggplot2 with custon apperance
ggplot(data=df, aes(x=x)) +
  stat_function(fun=eq, lwd=2, col="red", lty="dashed")
