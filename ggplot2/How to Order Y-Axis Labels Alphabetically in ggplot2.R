# Example: Order Y-Axis Labels Alphabetically in ggplot2
# create data frame
df <- data.frame(team=c('B', 'D', 'E', 'F', 'A', 'C', 'H', 'G'),
                 points=c(22, 12, 10, 30, 12, 17, 28, 23))

# view data frame
df

# If we create a scatter plot with points on the x-axis and team
# on the y-axis, ggplot2 will automatically display the teams 
# in alphabetical order (starting from the bottom):
library("ggplot2")

# create scatterplot
ggplot(df, aes(x=points, y=team)) +
  geom_point(size=2)

# To arrange the y-axis labels in reverse alphabetical order,
# we can use the following code:
library("ggplot2")

# sort y-axis variable in reverse alphabetical order
df$team <- factor(df$team, levels=rev(sort(df$team)))

# create scatter plotwith y-axis in alphabetical order
ggplot(df, aes(x=points, y=team)) + 
  geom_point()
