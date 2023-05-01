# Example: Rotate Annotated Text in ggplot2
# create data frame
df <- data.frame(player=c('Brad', 'Ty', 'Spencer', 'Luke', 'Max'),
                 points=c(17, 5, 12, 20, 22),
                 assists=c(4, 3, 7, 7, 5))

# view data frame
df

library("ggplot2")

# create scatter plot with annotated labels
ggplot(df) + 
  geom_point(aes(x=points, y=assists)) +
  geom_text(aes(x=points, y=assists, label=player))

library("ggpllot2")

# create scatterplot with annotated rotated labels
ggplot(df) +
  geom_point(aes(x=points, y=assists)) + 
  geom_text(aes(x=points, y=assists, label=player), hjust=-.3, vjust=-.1, angle=45) +
  ylim(3, 8)
