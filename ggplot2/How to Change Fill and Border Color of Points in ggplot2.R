# Example 1: Specify One Fill and Border Color for All Points
# It's important to note that the color and fill arguments only work
# when the shape value is between 21 and 25.
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 4, 7, 7, 10),
                 y=c(5, 8, 10, 14, 13, 19))

# create scatter plot
ggplot(df, aes(x=x, y=y)) +
  geom_point(color="black", fill="pink", shape=21, size=4)

# Example 2: Specify Multiple Fill and Border Colors for Points
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 4, 7, 7, 10),
                 y=c(5, 8, 10, 14, 13, 19),
                 group=c('A', 'A', 'A', 'B', 'B', 'B'))

# create scatterplot with multiple fill and border colors
ggplot(df, aes(x=x, y=y)) + 
  geom_point(color="black", shape=21, size=4, aes(fill=factor(group))) + 
  scale_fill_manual(values = c("pink", "lightgreen"))
