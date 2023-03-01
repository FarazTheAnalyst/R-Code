# create a bubble chart in R
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C'),
                 points=c(8, 11, 13, 13, 15, 18, 22, 27, 32),
                 assists=c(4, 3, 6, 5, 4, 7, 8, 11, 6),
                 minutes=c(9, 12, 15, 20, 36, 30, 31, 40, 43))

# view data frame
df

# load ggplot2()
library("ggplot2")

# create bubble chart
ggplot(df, aes(x=assists, y=points, size=minutes)) +
  geom_point(alpha=0.5)+
  scale_size(range = c(2, 10), name="Minutes Played")

# changing color
library("ggplot2")

# create bubble chart with blue circles
ggplot(df, aes(x=assists, y=points, size=minutes)) +
  geom_point(alpha=0.5, color="steelblue") +
  scale_size(range=c(2, 10), name="Minutes Playes")

# within aes() to make the color of each based on the value of another variable 
library("ggplot2")

# create bubble chart and color circles based on value of team variable
ggplot(df, aes(x=assists, y=points, size=minutes, color=team)) +
  geom_point(alpha=0.5) +
  scale_size(range=c(2, 10), name="Minutes Played")






















