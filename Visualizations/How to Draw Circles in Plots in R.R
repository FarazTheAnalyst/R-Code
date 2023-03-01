# draw circle using base R

# install & load packages
install.packages("plotrix")
library(plotrix)

# create data frame
df <- data.frame(x=c(1, 2, 2, 3, 3, 4, 8),
                 y=c(2, 4, 5, 4, 7, 9, 10))

# create scatter plot 
plot(df$x, df$y)

# add circle plotrix package function
draw.circle(x=3, y=8, radius = .5)

# create data frame
df <- data.frame(x=c(1, 2, 2, 3, 3, 4, 8),
                 y=c(2, 4, 5, 4, 7, 9, 10))

# create scatter plot
plot(df$x, df$y)

# create multiple circles to plot
draw.circle(x=3, y=8, radius = .5)
draw.circle(x=4, y=5, radius = .5, border = "red", col="lightblue", lwd=5, lty="dashed")

# draw circle using ggplot2
# install & load ggplot2 and ggforce
install.packages("ggplot2")
install.packages("ggforce")

library("ggplot2")
library("ggforce")

# create data frame
df <- data.frame(x=c(1, 2, 2, 3, 3, 4, 8),
                   y=c(2, 4, 5, 4, 7, 9, 10))

# create scatter plot with circle
ggplot(data=df, aes(x, y)) +
  geom_point() +
  geom_circle(aes(x0=3, y0=8, r=1), linetype="dashed", color="red",
              fill = "lightblue", lwd=1.5,  inherit.aes = FALSE) +
  coord_fixed()














