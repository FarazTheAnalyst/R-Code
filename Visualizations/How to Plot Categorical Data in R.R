# bar charts
library("ggplot2")

# create data frame
df <- data.frame(result = c('W', 'L', 'W', 'W', 'W', 'L', 'W', 'L', 'W', 'L'),
                 team = c('B', 'B', 'B', 'B', 'D', 'A', 'A', 'A', 'C', 'C'),
                 points = c(12, 28, 19, 22, 32, 45, 22, 28, 13, 19),
                 rebounds = c(5, 7, 7, 12, 11, 4, 10, 7, 8, 8))

# create bar chart of teams
ggplot(df, aes(x=team)) +
  geom_bar()

# create bar chart of teams, ordered from large to small
ggplot(df, aes(x=reorder(team, team, function(x)-length(x)))) +
  geom_bar(fill="steelblue") +
  labs(x="Team")

# boxplot by group
library("ggplot2")

# create data frame
df <- data.frame(result = c('W', 'L', 'W', 'W', 'W', 'L', 'W', 'L', 'W', 'L'),
                 team = c('B', 'B', 'B', 'B', 'D', 'A', 'A', 'A', 'C', 'C'),
                 points = c(12, 28, 19, 22, 32, 45, 22, 28, 13, 19),
                 rebounds = c(5, 7, 7, 12, 11, 4, 10, 7, 8, 8))

# create bocplots of points, grouped by team
ggplot(df, aes(x=team, y=points)) +
  geom_boxplot(fill="steelblue")

# Mosaic plot
# create data frame
df <- data.frame(result = c('W', 'L', 'W', 'W', 'W', 'L', 'W', 'L', 'W', 'L'),
                 team = c('B', 'B', 'B', 'B', 'D', 'A', 'A', 'A', 'C', 'C'),
                 points = c(12, 28, 19, 22, 32, 45, 22, 28, 13, 19),
                 rebounds = c(5, 7, 7, 12, 11, 4, 10, 7, 8, 8))

# create table of counts
counts <- table(df$result, df$team)

# create mosaic plot
mosaicplot(counts, xlab = "Game Result", ylab = "Team",
           main = "Wins by team", col="steelblue")



















