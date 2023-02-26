# create data frame
df <- data.frame(x=c(1, 2, 2, 3, 5, 6, 7),
                 y=c(4, 8, 7, 9, 15, 14, 20),
                 group=c('A', 'A', 'A', 'B', 'B', 'B', 'B'))

# view data frame
df

# scatter plot by group in base R
# create scatterplot with points colored by group
plot(df$x, df$y, col=as.factor(df$group), pch=19)

# scatter plot by group in ggplot2
library("ggplot2")

# create scatterplot with points colored by group
ggplot(df, aes(x, y)) +
  geom_point(aes(color=group))

library("ggplot2")

# create scatterplot with points colored by froup
ggplot(df, aes(x, y))+
  geom_point(aes(color=group, size = 3))+
  scale_color_manual(values = c("purple", "steelblue"))
  