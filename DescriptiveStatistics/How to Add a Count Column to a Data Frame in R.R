# add count column in R
# define data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'B', 'B'),
                 position=c('G', 'F', 'F', 'F', 'G', 'G', 'F', 'F'),
                 points=c(18, 22, 19, 14, 14, 11, 20, 28))

# view data frame
df

library("dplyr")

# count column that shows total count of each team
df %>% 
  group_by(team) %>% 
  mutate(team_count = n())

library("dplyr")

# add column that shows total count of each team and position
df %>% 
  group_by(team, position) %>% 
  mutate(team_pos_count = n())
