# Example: Change Order of Facets in ggplot2
# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'D', 'D'),
                 points=c(8, 14, 20, 22, 25, 29, 30, 31),
                 assists=c(10, 5, 5, 3, 8, 6, 9, 12))

# view data frame
df

library("ggplot2")

# create multiple scatter plots using facet_grid
ggplot(df, aes(assists, points)) + 
  geom_point() + 
  facet_grid(.~team)

library("ggplot2")

# create multiple scatter plots using facet_grid with speicfic order
ggplot(df, aes(assists, points)) + 
  geom_point() +
  facet_grid(~factor(team, levels=c("C", "D", "A", "B")))
