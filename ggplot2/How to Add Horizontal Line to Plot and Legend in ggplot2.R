# Example: Add Horizontal Line to Plot and Legend in ggplot2
# create data frame
df <- data.frame(team=rep(c('A', 'B'), each=5),
                 assists=c(1, 3, 3, 4, 5, 7, 7, 9, 9, 10),
                 points=c(4, 8, 12, 10, 18, 25, 20, 28, 33, 35))

# view data frame
df

library("ggplot2")

# create data frame that contains horizontal line location
cutoff <- data.frame(yintercept=22, Lines="Cutoff")

# create scatterplot with horizontal line and iclude horizontal line in the lengend
ggplot(df, aes(x=assists, y=points)) +
  geom_point(aes(color=team)) +
  geom_hline(aes(yintercept=yintercept, linetype=Lines), cutoff)

# For example, we can use the following syntax to change the label for the horizontal line to be "Cutoff of Good vs. Bad":
library("ggpllot2")

# create data frame that contains horizontal line location
cutoff <- data.frame(yintercept=22, Lines="Cutoff of Good vs.Bad")

# create scatterplot with horizontal line and include horizontal line in the legend
ggplot(df, aes(x=assists, y=points)) +
  geom_point(aes(color=team)) +
  geom_hline(aes(yintercept = yintercept, linetype=Lines), cutoff)
