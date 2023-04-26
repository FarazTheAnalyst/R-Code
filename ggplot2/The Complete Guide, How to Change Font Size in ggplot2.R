library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(6, 8, 14, 19, 22, 18),
                 z=c('A', 'A', 'B', 'B', 'C', 'C'))

# create scatterplot
p <- ggplot(df, aes(x=x, y=y, color=z)) +
  geom_point(size=3) +
  ggtitle("This is the title")

p

# Example 1: Change Font Size of All Text
p + theme(text=element_text(size=20))

# Example 2: Change Font Size of Axis Text
p + theme(axis.text = element_text(size=30))

# Example 3: Change Font Size of Axis Titles
p + theme(axis.title = element_text(size = 30))

# Example 4: Change Font Size of Plot Title
p + theme(plot.title = element_text(size=30))

# Example 5: Change Font Size of Legend Text
p + theme(legend.text = element_text(size=30))

# Example 6: Change Font Size of Legend Title
p + theme(legend.title = element_text(size=30))
