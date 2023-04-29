# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C'),
                 position=c('G', 'G', 'F', 'G', 'F', 'F', 'F', 'G'),
                 points=c(12, 22, 24, 23, 20, 15, 11, 30))

# view data frame
df

# Example 1: Adjust Spacing Between Bars in Bar Chart
# The following code shows how to create a bar chart to visualize
# the occurrences of each team using the default width spacing of 0.9:
library(ggplot2)

# create bar plot with default spacing
ggplot(df, aes(x=team)) + 
  geom_bar()

# And the following code shows how to increase the space between
# the bars by decreasing the value for the width argument to 0.4:
library("ggplot2")

# create bar plot with increased spacing
ggplot(df, aes(x=team)) + 
  geom_bar(width=.4)

# Example 2: Adjust Spacing Between Bars in Clustered Bar Chart
library("ggplot2")

# create clustered bar plot with default spacing
ggplot(df, aes(x=team, y=points, fill=position)) + 
  geom_bar(stat = "identity", position = "dodge")

library("ggplot2")

# create clustered bar plot with increased spacing
ggplot(df, aes(x=team, y=points, fill=position)) + 
  geom_bar(width=.5, stat = "identity", position = position_dodge(.7))















