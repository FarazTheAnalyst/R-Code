# create data
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(7, 9, 14, 19, 12, 15),
                 z=c("A", "B", "C", "D", "E", "F"))

# create scatterplot
plot(df$x, df$y)

# add label to third point in dataset
text(df$x[3], df$y[3]-1, labels = df$z[3])

# label scatterplot points in ggplot2
# load ggplot2
library("ggplot2")

# create data
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(7, 9, 14, 19, 12, 15),
                 z=c('A', 'B', 'C', 'D', 'E', 'F'))

# create scatterplot with a label on the third point in dataset
ggplot(df, aes(x, y)) +
  geom_point()+
  annotate("text", x=3, y=13.5, label='C')

# load ggplot2 & ggrepel for easy annotations
library("ggplot2")
install.packages("ggrepel")
library("ggrepel")

# create data
df <- data.frame(x=c(1, 2, 3, 4, 5, 6),
                 y=c(7, 9, 14, 19, 12, 15),
                 z=c('A', 'B', 'C', 'D', 'E', 'F'))

# create scatter plot with a label on every point
ggplot(df, aes(x, y))+
  geom_point()+
  geom_text_repel(aes(label=z))





















