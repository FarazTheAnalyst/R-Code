# The facet_grid() function will produce a grid of plots for
# each combination of variables that you specify, even if some 
# plots are empty.
# The facet_wrap() function will only produce plots for the
# combinations of variables that have values, which means it
# won't produce any empty plots.
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'G', 'G'),
                 points=c(8, 14, 20, 22, 25, 29, 30, 31),
                 assists=c(10, 5, 5, 3, 8, 6, 9, 12))

# view  data frame
df

# Example 1: Use facet_grid() Function
library(ggplot2)

ggplot(df, aes(assists, points)) + 
  geom_point() + 
  facet_grid(position~team)

# Example 2: Use facet_wrap() Function
library("ggplot2")

ggplot(df, aes(assists, points)) + 
  geom_point() + 
  facet_wrap(positioin~team)
