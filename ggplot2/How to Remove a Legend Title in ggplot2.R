# Example: Remove Legend Title from Plot in ggplot2
# create data frame
df <- data.frame(assists=c(3, 4, 4, 3, 1, 5, 6, 7, 9),
                 points=c(14, 8, 8, 16, 3, 7, 17, 22, 26),
                 position=rep(c('Guard', 'Forward', 'Center'), times=3))

# view data frame
df

library("ggplot2")

# create scatterplot of assists vs. points, grouped by position
ggplot(df, aes(x=assists, y=points, color=position)) + 
  geom_point(size=3)

library(ggplot2)

# create scatterplot and remove legend title
ggplot(df, aes(x=assists, y=points, color=position)) + 
  geom_point(size=3) + 
  labs(color=NULL)
