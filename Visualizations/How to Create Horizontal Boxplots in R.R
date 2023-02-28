# horizontal boxplot in base R
# create data 
data <- data.frame(points=c(7, 8, 9, 12, 12, 5, 6, 6, 8, 11, 6, 8, 9, 13, 17),
                   team=rep(c("A", "B", "C"), each = 5))

# create horizontal boxplot for points
boxplot(data$points, horizontal=TRUE, col="lightblue")

# create data
data <- data.frame(points=c(7, 8, 9, 12, 12, 5, 6, 6, 8, 11, 6, 8, 9, 13, 17),
                   team=rep(c("A", "B", "C"), each = 5))

# create horizontal boxplots grouped by team
boxplot(points~team, data=data, horizontal = TRUE, col="lightblue", las=2)

# horizontal boxplots in ggplot2
library("ggplot2")

# create data
data <- data.frame(points=c(7, 8, 9, 12, 12, 5, 6, 6, 8, 11, 6, 8, 9, 13, 17),
                   team=rep(c("A", "B", "C"), each = 5))

# create horizontal boxplot for points
ggplot(data, aes(y=points)) +
  geom_boxplot(fill = "lightblue") +
  coord_flip()

# create several horizontal boxplots in ggplot2 based on groups
library("ggplot2")

# create data
data <- data.frame(points=c(7, 8, 9, 12, 12, 5, 6, 6, 8, 11, 6, 8, 9, 13, 17),
                   team=rep(c("A", "B", "C"), each = 5))

# create horizontal boxplot for points
ggplot(data, aes(x=team, y=points)) +
  geom_boxplot(fill = "lightblue") + 
  coord_flip()




















