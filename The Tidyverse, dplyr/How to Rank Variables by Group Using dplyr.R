# create data frame
df <- data.frame(team = c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C'),
                 points = c(12, 28, 19, 22, 32, 45, 22, 28, 13, 19),
                 rebounds = c(5, 7, 7, 12, 11, 4, 10, 7, 8, 8))

# view data frame
df

# Example 1: Rank in Ascending Order
library("dplyr")

# rank points scored, group by team
df %>% arrange(team, points) %>% 
  group_by(team) %>% 
  mutate(rank = rank(points))

# Example 2: Rank in Descending Order
library("dplyr")

# rank points scored in reverse, grouped by team
df %>% arrange(team, points) %>% 
  group_by(team) %>% 
  mutate(rank=rank(-points))
