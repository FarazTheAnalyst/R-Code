library("ggplot2")

# create data frame
df <- data.frame(x=0:25, y=0:25)

# create scatterplot
ggplot(df, aes(x=x, y=y)) +
  geom_point(shape=0:25, size=4)

# Example 1: Create Plot with Default Shape
library("ggplot2")

# create data frame
df <- data.frame(x=0:25, y=0:25)

# create scatterplot with default point shape
ggplot(df, aes(x=x, y=y)) +
  geom_point(size=4)

library("ggplot2")

# create data frame
df <- data.frame(x=0:25, y=0:25)

# create scatterplot with custom point shape
ggplot(df, aes(x=x, y=y)) +
  geom_point(shape=2, size=4)


# Example 3: Create Plot with Shape Based on Value
library("ggplot2")

# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C'),
                 points=c(8, 11, 13, 15, 19, 25),
                 assists=c(4, 8, 7, 10, 11, 7))

# create scatterplot where point shape is based on team
ggplot(df, aes(x=points, y=assists, group=team)) +
  geom_point(aes(shape=team, color=team), size=4)





















