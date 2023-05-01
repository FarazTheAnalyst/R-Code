# Example: Change Number of Axis Ticks in ggplot2
# create data frame
df <- data.frame(x=c(1, 2, 4, 5, 6, 8, 12, 14, 19),
                 y=c(2, 5, 7, 8, 14, 19, 22, 28, 36))

# view data frame
df

library("ggplot2")

# create scatter plot
ggplot(df, aes(x=x, y=y)) + 
  geom_point(size=2)

# However, we can use the n.breaks argument to specify the
# exact number of ticks to use on both axes:
library("ggplot2")

# create scatterplot with custom number of ticks
ggplot(df, aes(x=x, y=y)) + 
  geom_point(size=2) + 
  scale_x_continuous(n.breaks = 10) +
  scale_y_continuous(n.breaks = 10)

library("ggplot2")

# create scatterplot with custom number of ticks on x-axis only
ggplot(df, aes(x=x, y=y)) +
  geom_point(size=2) + 
  scale_x_continuous(n.breaks=20)
