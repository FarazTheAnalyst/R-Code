# Example: Reorder Bars in Stacked Bar Chart in ggplot2
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C'),
                 position=c('G', 'F', 'C', 'G', 'F', 'C', 'G', 'F', 'C'),
                 points=c(22, 12, 10, 30, 12, 17, 28, 23, 20))

# view data frame
df

library("ggplot2")

# create stacked bar chart
ggplot(df, aes(x=team, y=points, fill=position)) + 
  geom_bar(position="stack", stat="identity")

library("ggplot2")

# convert "position to factor and specify level order
df$position <- factor(df$position, level=c("F", "G","C"))

# create stacked bar chart
ggplot(df, aes(x=team, y=points, fill=position)) +
  geom_bar(position="stack", stat="identity")
