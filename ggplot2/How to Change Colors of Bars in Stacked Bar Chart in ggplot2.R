# Example: Change Color of Bars in Stacked Bar Chart in ggplot2
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

# create stacked bar chart with custom colors
ggplot(df, aes(x=team, y=points, fill=position)) + 
  geom_bar(position = "stack", stat = "identity") + 
  scale_fill_manual(values = c("red", "purple", "pink"))

# Also note that we can use hex color codes within the scale_fill_manual() function:
library("ggplot2")

# create stacked bar chart with custom hex color codes
ggplot(df, aes(x=team, y=points, fill=position)) + 
  geom_bar(position = "stack", stat = "identity") + 
  scale_fill_manual(values = c("#2596BE", "#8225BE", "#D4C443"))
