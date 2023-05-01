# create data frame
df <- data.frame(x=c(1, 2, 4, 5, 7, 8, 9, 10),
                 y=c(12, 17, 27, 39, 50, 57, 66, 80))

# view data frame
df

# Example 1: Set Y-Axis Breaks
library("ggplot2")

# create scatterplot of x vs. y
ggplot(df, aes(x=x, y=y)) + 
  geom_point()

# By default, the y-axis shows breaks at 20, 40, 60, and 80.
# However, we can use the scale_y_continuous() function to
# display breaks at every 10 values instead:
# create scatterplot of x vs. y with custom breaks on y-axis
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, 10))

# Example 2: Set X-Axis Breaks
# create scatterplot of x vs. y with custom breaks on x-axis
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  scale_x_continuous(limits = c(0, 10), breaks = c(0, 2, 4, 6, 8, 10))

# create scatterplot of x vs. y with custom breaks on x-axis
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  scale_x_continuous(limits = c(0, 10), breaks = c(0, 7, 10))





















