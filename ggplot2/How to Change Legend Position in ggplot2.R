# Example: Place Legend On Outside of Plot
library("ggplot2")
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() + 
  theme(legend.position = "top")

# And here's how to place the legend on the bottom of the plot:
library("ggplot2")

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme(legend.position = "bottom")

# Example: Place Legend On Inside of Plot
library("ggplot2")

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() + 
  theme(legend.position = c(.9, .9))

# And here's how to place the legend inside the bottom right corner:
library("ggplot2")

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() +
  theme(legend.position = c(.9, .1))

# Example: Remove Legend Completely
library("ggplot2")

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + 
  geom_point() +
  theme(legend.position = "none")
