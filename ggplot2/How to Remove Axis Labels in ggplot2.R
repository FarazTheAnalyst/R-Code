# Example 1: Remove X-Axis Labels
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 y=c(11, 13, 15, 14, 19, 22, 28, 25, 30, 29))

# create scatterplot
ggplot(df, aes(x=x, y=y)) +
  geom_point() + 
  theme(axis.text.x = element_blank(),
        axis.ticks.x=element_blank())

# Example 2: Remove Y-Axis Labels
library(ggplot2)

# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 y=c(11, 13, 15, 14, 19, 22, 28, 25, 30, 29))

# create scatterplot
ggplot(df, aes(x=x, y=y)) + 
  geom_point() +
  theme(axis.text.y = element_blank(),
        axis.ticks.y = element_blank())

# Example 3: Remove Both Axis Labels
library("ggplot2")

# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 y=c(11, 13, 15, 14, 19, 22, 28, 25, 30, 29))

# Example 3: Remove Both Axis Labels
# create scatterplot
ggplot(df, aes(x=x, y=y)) + 
  geom_point() + 
  theme(axis.text.x = element_blank(),
        axis.ticks.x=element_blank(),
        axis.text.y=element_blank(),
        axis.ticks.y=element_blank())
