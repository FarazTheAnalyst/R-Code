# Example: Order Items on x-axis in ggplot2
# create data frame
df <- data.frame(team=c('Mavs', 'Heat', 'Nets', 'Lakers'),
                 points=c(100, 122, 104, 109))

# view data frame
df

library("ggplot2")

# create bar plot
ggplot(df, aes(x=team, y=points)) + 
  geom_col()

library("ggplot2")

# create bar plot with specific axis order
ggplot(df, aes(x=factor(team, level=c("Mavs", "Heat", "Nets", "Lakers")), y=points)) + 
  geom_col()


library("ggplot2")

# create bar plot with specific axis order
ggplot(df, aes(x=factor(team, levels=c("Mavs", "Heat", "Nets", "Lakers")), y=points)) +
  geom_col() + 
  xlab("Team")
