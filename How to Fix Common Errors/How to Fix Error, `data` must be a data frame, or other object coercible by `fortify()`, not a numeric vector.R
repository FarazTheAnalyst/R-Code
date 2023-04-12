# This error occurs when you attempt to use ggplot2 to plot
# variables in a data frame, but you reference a vector
# instead of a data frame for the data argument.

# How to Reproduce the Error
# create data frame
df <- data.frame(x=c(1, 2, 3, 4, 5, 6, 7, 8),
                 y=c(4, 8, 14, 19, 14, 13, 9, 9))

# view data frame
df

library(ggplot2)

# attempt to create scatter plot
ggplot(df$x, aes(x=x, y=y)) +
  geom_point()

# How to Fix the Error
library("ggplot2")

# create scatter plot
ggplot(df, aes(x=x, y=y)) +
  geom_point()
