# If you provide the argument stat="identity" to geom_bar()
# then you're telling R to calculate the sum of the y variable,
# grouped by the x variable and use bars to display the sums.
# create data frame
df <- data.frame(team=rep(c("A", "B","C"), each=4),
                 points=c(3, 5, 5, 6, 5, 7, 7, 8, 9, 9, 9, 8))

# view data frame
df

# Example 1: Using geom_bar()
# create bar chart to visualize occurrence of each unique value in team columm
ggplot(df, aes(team)) +
  geom_bar()

# Example 2: Using geom_bar(stat="identity")
library("ggplot2")

# create bar chart to visualize sum of points, grouped by team
ggplot(df, aes(x=team, y=points)) + 
  geom_bar(stat="identity")
