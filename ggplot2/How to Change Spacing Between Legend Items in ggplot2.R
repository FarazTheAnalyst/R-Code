# create data frame
df <- data.frame(team=c('Mavs', 'Heat', 'Nets', 'Lakers', 'Suns', 'Cavs'),
                 points=c(24, 20, 34, 39, 28, 29),
                 assists=c(5, 7, 6, 9, 12, 13))

# view data frame
df

# Example 1: Change Horizontal Spacing Between Legend Items
library(ggplot2)

# create scatterplot with default spacing in legend
ggplot(df, aes(x=assists, y=points, color=team)) + 
  geom_point(size=3) +
  theme(legend.position = "bottom")

# create scatterplot with increased horozontal in legend
ggplot(df, aes(x=assists, y=points, color=team)) +
  geom_point(size=3) + 
  theme(legend.position = "bottom",
        legend.spacing.x=unit(1, "cm"))

# Example 2: Change Vertical Spacing Between Legend Items
library("ggplot2")

# create scatterplot with default spcaing in legend
ggplot(df, aes(x=assists, y=points, color=team)) +
  geom_point(size=3)

library("ggplot2")

# create scatterplot with increased vertical spacing in legend
ggplot(df, aes(x=assists, y=points, color=team)) +
  geom_point(size=3) +
  theme(legend.spacing.y = unit(1, 'cm')) +
  guides(fill = guide_legend(byrow = TRUE))

