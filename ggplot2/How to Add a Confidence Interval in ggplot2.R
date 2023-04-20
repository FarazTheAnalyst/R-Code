# Example 1: Add Confidence Interval Lines in ggplot2
library("ggplot2")

# create scatterplot with confidence bands
ggplot(data=mtcars, aes(x=mpg, y=wt)) +
  geom_point() +
  geom_smooth(method = lm)

# Example 2: Modify Level of Confidence Interval
library("ggplot2")

# create scatterplot with 90% confidence bands
ggplot(data = mtcars, aes(x=mpg, y=wt)) +
  geom_point() +
  geom_smooth(method = lm, level=0.90)

# Example 3: Modify Appearance of Confidence Interval Lines
library("ggplot2")

# create scatterplot with custom confidence interval lines
ggplot(data=mtcars, aes(x=mpg, y=wt)) +
  geom_point() + 
  geom_smooth(method = lm, color="red", fill="lightblue")
