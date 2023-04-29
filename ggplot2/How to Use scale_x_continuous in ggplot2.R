# create data frame
df <- data.frame(points=c(5, 7, 12, 13, 15, 19, 22, 25),
                 assists=c(4, 3, 2, 3, 7, 8, 5, 7))

# view data frame
df

# Example 1: Use scale_x_continuous with Custom Axis Breaks
library("ggplot2")

# create scatterplot with custom x-axis breaks
ggplot(df, aes(x=points, y=assists)) + 
  geom_point(size=2) + 
  scale_x_continuous(breaks=c(5, 15, 25))

library("ggplot2")

# create scatterplot with custom number of breaks on x-axis
ggplot(df, aes(x=points, y=assists)) + 
  geom_point(size=2) + 
  scale_x_continuous(n.breaks = 12)

# Example 3: Use scale_x_continuous with Custom Labels
library("ggplot2")

# create scatterplot with custom labels on x-axis
ggplot(df, aes(x=points, y=assists)) + 
  geom_point(size=2) + 
  scale_x_continuous(breaks = c(5, 15, 25), labels = c("five", "fifteen", "twenty-five"))

# Example 4: Use scale_x_continuous with Custom Limits
library("ggplot2")

# create scatterplot with custom x-axis limits
ggplot(df, aes(x=points, y=assists)) + 
  geom_point(size=2) + 
  scale_x_continuous(limits = c(0, 40))
