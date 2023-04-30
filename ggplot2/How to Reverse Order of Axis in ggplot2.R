# Example: Reverse Order of Axis in ggplot2
library("ggplot2")

# create data frame
df <- data.frame(hours=c(1, 2, 2, 3, 4, 6, 7, 7, 8, 9),
                 score=c(76, 77, 75, 79, 84, 88, 85, 94, 95, 90))

# create scatter plot with noraml y-axis
ggplot(df, aes(x=hours, y=score)) + 
  geom_point(size=2)

library("ggplot2")

# create data frame
df <- data.frame(hours=c(1, 2, 2, 3, 4, 6, 7, 7, 8, 9),
                 score=c(76, 77, 75, 79, 84, 88, 85, 94, 95, 90))

# create scatter plot with reversed y-axis
ggplot(df, aes(x=hours, y=score)) + 
  geom_point(size=2) + 
  scale_y_reverse()

# We could also use the limits argument within the
# scale_y_reverse() function to modify the y-axis limits:
library("ggplot2")

# create data frame
df <- data.frame(hours=c(1, 2, 2, 3, 4, 6, 7, 7, 8, 9),
                 score=c(76, 77, 75, 79, 84, 88, 85, 94, 95, 90))

# create scatterplot with reversed y-axis and modified limits
ggplot(df, aes(x=hours, y=score)) + 
  geom_point(size=2) + 
  scale_y_reverse(limits=c(100, 50))























