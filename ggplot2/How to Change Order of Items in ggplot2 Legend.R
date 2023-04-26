# Example: Change Order of Items in ggplot2 Legend
library("ggplot2")

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'C', 'C', 'C', 'C'),
                 points=c(6, 8, 13, 16, 10, 14, 19, 22, 14, 18, 24, 26))

# create multiple boxplots to visualize points scored by team
ggplot(data = df, aes(x=team, y=points, fill=team)) + 
  geom_boxplot()

# To change the order of the items in the legend, we can use the
# scale_fill_discrete() function as follows:
library("ggplot2")

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'C', 'C', 'C', 'C'),
                 points=c(6, 8, 13, 16, 10, 14, 19, 22, 14, 18, 24, 26))

# create multiple boxplots to visualize points scored by team
ggplot(data = df, aes(x=team, y=points, fill=team)) + 
  geom_boxplot() + 
  scale_fill_discrete(breaks=c("B", "C","A"))

library("ggplot2")

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'C', 'C', 'C', 'C'),
                 points=c(6, 8, 13, 16, 10, 14, 19, 22, 14, 18, 24, 26))

# create multiple boxplots to visualize points scored by team
ggplot(data=df, aes(x=team, y=points, fill=team)) + 
  geom_boxplot() + 
  scale_fill_discrete(breaks=c("B", "C", "A"),
                      labels=c("B Team", "C Team", "A Team"))
