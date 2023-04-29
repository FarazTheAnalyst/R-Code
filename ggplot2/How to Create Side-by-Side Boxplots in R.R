# create data frame
df <- data.frame(team=rep(c('A', 'B', 'C'), each=8),
                 points=c(5, 5, 6, 6, 8, 9, 13, 15,
                          11, 11, 12, 14, 15, 19, 22, 24,
                          19, 23, 23, 23, 24, 26, 29, 33))

# view first 10 rows 
head(df, 10)

# Side-by-Side Boxplots in Base R
# create vertical side-by-side boxplots
boxplot(df$points ~ df$team,
        col='steelblue',
        main='Points by Team',
        xlab='Team',
        ylab='Points') 

# We can use the argument horizontal=TRUE to display the boxplots
# horizontally instead of vertically:
# create horizontal side-by-side boxplots
boxplot(df$points ~ df$team,
        col="pink",
        main="Points by Team",
        xlab="Points", 
        ylab="Points",
        horizontal = TRUE)

# Side-by-Side Boxplots in ggplot2
library("ggplot2")

# create vertical side-by-side boxplots
ggplot(df, aes(x=team, y=points, fill = team)) + 
  geom_boxplot() + 
  ggtitle("Points by Team")

# And we can use the coord_flip() argument to display
# the boxplots horizontally instead of vertically:
library("ggplot2")

# create horizontal side-by-side boxplots
ggplot(df, aes(x=team, y=points, fill=team)) + 
  geom_boxplot() + 
  coord_flip() + 
  ggtitle("Points by Team")
















