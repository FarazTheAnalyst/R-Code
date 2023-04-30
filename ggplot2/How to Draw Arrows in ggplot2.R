# Example: Draw Arrows in ggplot2
# create data frame
df <- data.frame(points=c(3, 3, 5, 6, 7, 8, 9, 9, 8, 5),
                 rebounds=c(2, 6, 5, 5, 8, 5, 9, 9, 8, 6))

# view data frame
df

library("ggplot2")

# create scatterplot and add arrow
ggplot(df, aes(x=points, y=rebounds)) + 
  geom_point() +
  geom_segment(aes(x=5, y=6, xend=8, yend=9), arrow = arrow(length = unit(.5, "cm")))

library('ggplot2')

# create scatterplot and add arrow with increased arrow head size
ggplot(df, aes(x=points, y=rebounds)) + 
  geom_point() + 
  geom_segment(aes(x=5, y=6, xend=8, yend=9), arrow = arrow(length=unit(2, "cm")))

library("ggplot2")

# create scatterplot and add customized arrow
ggplot(df, aes(x=points, y=rebounds)) + 
  geom_point() + 
  geom_segment(aes(x=5, y=6, xend=8, yend=9), arrow=arrow(length=unit(.5, "cm")) +
  color="red", lwd=3)
