# define data
df <- data.frame(x=c(1, 3, 3, 4, 6, 8, 12, 13, 15, 18, 21, 22),
                 y=c(13, 15, 9, 17, 22, 25, 29, 35, 39, 44, 45, 40))

# create plot with default axis scales
plot(df$x, df$y, pch=19, main="Default Axes")

# create plot with custom axis scales
plot(df$x, df$y, pch=19, xlim = c(0, 30), ylim = c(0, 150), main="Custom Axes")

# create plot with log y-axis
plot(df$x, df$y, log = "y", pch=19)

# change Axis scales in ggplot2
library("ggplot2")

# define data
df <- data.frame(x=c(1, 3, 3, 4, 6, 8, 12, 13, 15, 18, 21, 22),
                 y=c(13, 15, 9, 17, 22, 25, 29, 35, 39, 44, 45, 40))

# create scatterplot with custom axes
ggplot(data=df, aes(x=x, y=y)) +
  geom_point() +
  xlim(0) +
  ylim(0, 150)

library(ggplot2)

#define data
df <- data.frame(x=c(1, 3, 3, 4, 6, 8, 12, 13, 15, 18, 21, 22),
                 y=c(13, 15, 9, 17, 22, 25, 29, 35, 39, 44, 45, 40))

# create scatterplot with log y-axis
ggplot(data = df, aes(x=x, y=y)) +
  geom_point()+
  scale_y_continuous(trans = "log10")
