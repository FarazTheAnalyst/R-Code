# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(18, 22, 19, 14, 14, 11, 20, 28),
                 assists=c(2, 7, 9, 3, 12, 10, 14, 21))

# view data frame
df

# load dplyr package
library("dplyr")

# calculate the correlation between "points" and "assists" grouped by "team"
df %>% 
  group_by(team) %>% 
  summarize(cor=cor(points, assists))











