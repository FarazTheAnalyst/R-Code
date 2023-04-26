# Example: Create Legend in ggplot2 with Multiple Rows
# create data frame
df <- data.frame(team=c('Mavs', 'Heat', 'Nets', 'Lakers', 'Suns', 'Cavs'),
                 points=c(24, 20, 34, 39, 28, 29),
                 assists=c(5, 7, 6, 9, 12, 13))

# view data frame
df

# If we create a scatter plot in ggplot2 without specifying the
# number of rows to use in the legend, ggplot2 will place one label
# on each line by default:
library("ggplot2")

# create default scatterplot
ggplot(df, aes(x=assists, y=points, color=team)) +
  geom_point(size=3)

library("ggplot2")

# create scatterplot with two rows in legend
ggplot(df, aes(x=assists, y=points, color=team)) + 
  geom_point() +
  guides(color=guide_legend(nrow=2, byrow = TRUE))

# If we'd like to change the location of the legend as well,
# we can use the theme() function with the legend.position argument:
library("ggplot2")

# create scatterplot with two rows in legend
ggplot(df, aes(x=assists, y=points, color=team)) + 
  geom_point(size=3) + 
  theme(legend.position = "bottom") + 
  guides(color=guide_legend(nrow=2, byrow=TRUE))
