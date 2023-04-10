# This error occurs when you attempt to create a plot
# using the ggplot2 data visualization package in R, but
# accidently place the plus (+) sign at the beginning of a 
# new line instead of the end of the current line.

# How to Reproduce the Error
library("ggplot2")

# attempt to create scatter plot
ggplot(mtcars, aes(mpg, wt))
+ geom_point()

# how to fix the Error
library(ggplot2)

# create scatter plot
ggplot(mtcars, aes(mpg, wt)) +
  geom_point()
