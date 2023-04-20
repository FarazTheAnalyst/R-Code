# Example 1: Center the Title
library("ggplot2")

library("ggplot2")

# create scatterplot with centered title
ggplot(data=mtcars, aes(x=mpg, y=wt)) +
  geom_point() +
  ggtitle("Plot Title") +
  theme(plot.title = element_text(hjust = 0.5))

# Example 2: Right-Align the Title
library(ggplot2)

# create scatterplot with right-alighned title
ggplot(data=mtcars, aes(x=mpg, y=wt)) +
  geom_point() +
  ggtitle("Plot Title") + 
  theme(plot.title = element_text(hjust = 1))

# Example 3: Adjust Title Position Vertically
library(ggplot2)

# create scatterplot with title moved higher up 
ggplot(data=mtcars, aes(x=mpg, y=wt)) +
  geom_point() +
  ggtitle("Plot Title") +
  theme(plot.title = element_text(hjust = 1, vjust=3))

library("ggplot2")

# create scatterplot with title moved down
ggplot(data=mtcars, aes(x=mpg, y=wt)) +
  geom_point() +
  ggtitle("Plot Title") +
  theme(plot.title = element_text(hjust = 1, vjust = -10))
























