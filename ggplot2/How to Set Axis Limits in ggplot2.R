# load ggplot2
library("ggplot2")

# create scatterplot
ggplot(mtcars, aes(mpg, wt)) + 
  geom_point()

# Example 1: Set X-Axis Limits Using xlim()
# create scatterplot with x-axis ranging from 15 to 30
ggplot(mtcars, aes(mpg, wt)) + 
  geom_point() + 
  xlim(15, 30)

# You can also use NA to only set the upper limit of the x-axis and
# let ggplot2 automatically choose the lower limit:
# create scatterplot with x-axis upper limit at 30
ggplot(mtcars, aes(mpg, wt)) + 
  geom_point() +
  xlim(NA, 30)

# Example 2: Set Y-Axis Limits Using ylim()
# create scatterplot with y-axis ranging from 2 to 4
ggplot(mtcars, aes(mpg, wt)) +
  geom_point() + 
  ylim(2, 4)

# You can also use NA to only set the lower limit of the y-axis
# and let ggplot2 automatically choose the upper limit:
# create scatterplot with y-axis lower limit at 2
ggplot(mtcars, aes(mpg, wt)) + 
  geom_point() + 
  ylim(2, NA)

# Example 3: Set Axis Limits Using coord_cartesian()
# create scatterplot with y_axix ranging form 2 to 4
ggplot(mtcars, aes(mpg, wt)) + 
  geom_point() + 
  coord_cartesian(xlim = c(15, 25), ylim=c(3, 4))



















