# create data frame
df <- data.frame(points=c(5, 7, 12, 13, 15, 19, 22, 25),
                 assists=c(4, 3, 2, 3, 7, 8, 5, 7))

# view data frame
df

# Example 1: Use scale_y_continuous with Custom Axis Breaks
library("ggplot2")

# create scatterplot with custom y-axis breaks
ggplot(df, aes(x=points, y=assists)) + 
  geom_point(size=2) + 
  scale_y_continuous(breaks = c(2, 5, 8))

# Example 2: Use scale_y_continuous with Custom Number of Breaks
library("ggplot2")

# create scatterplot with custom number of breaks on y-axis
ggplot(df, aes(x=points, y=assists)) + 
  geom_point(size=2) + 
  scale_y_continuous(n.breaks = 2)

# Example 3: Use scale_y_continuous with Custom Labels
library("ggplot2")

# create scatterplot with custom labels
ggplot(df, aes(x=points, y=assists)) + 
  geom_point(size=2) + 
  scale_y_continuous(breaks = c(2, 5, 8), labels = c("two", "five", "eight"))

# Example 4: Use scale_y_continuous with Custom Limits
library("ggplot2")

# create scatterplot with custom y-axis limits
ggplot(df, aes(x=points, y=assists)) + 
  geom_point(size=2) + 
  scale_y_continuous(limits = c(0, 20))





















