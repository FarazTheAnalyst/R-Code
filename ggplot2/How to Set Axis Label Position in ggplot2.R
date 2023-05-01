# Example 1: Set X-Axis Label Position
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 4, 5, 7, 8, 9, 10),
                 y=c(12, 17, 27, 39, 50, 57, 66, 80))

# create scatterplot of x vs. y
ggplot(df, aes(x=x, y=y)) + 
  geom_point()

# We can add a margin to the top of the x-axis title to make
# the x-axis title appear further from the axis:
# create scatterplot of x vs. y with margin added on x-axis title
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  theme(axis.title.x = element_text(margin = margin(t=70)))

# Example 2: Set Y-Axis Label Position
# create scatterplot of x vs. y with marign added on y-axis title
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  theme(axis.title.y = element_text(margin = margin(r=70)))
