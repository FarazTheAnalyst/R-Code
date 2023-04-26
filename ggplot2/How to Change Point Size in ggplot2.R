library("ggplot2")

ggplot(data = mtcars, aes(x=mpg, y=wt)) +
  geom_point()

# Example 1: Increase Point Size in ggplot2
library("ggplot2")

# create scatterplot with increased point size
ggplot(data = mtcars, aes(x=mpg, y=wt)) +
  geom_point(size=5)

# Example 2: Decrease Point Size in ggplot2
library("ggplot2")

# create scatterplot with decreased point size
ggplot(data = mtcars, aes(x=mpg, y=wt)) +
  geom_point(size=0.5)

# Example 3: Adjust Point Size Based on Variable
library("ggplot2")

# create scatterplot with point size based on value of qsec
ggplot(data = mtcars, aes(x=mpg, y=wt)) + 
  geom_point(aes(size=qsec))
