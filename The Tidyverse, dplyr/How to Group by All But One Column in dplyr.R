# Example: Group by All But One Column in dplyr
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 starter=c('Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N'),
                 points=c(99, 104, 119, 113))

# view data frame
df

library("dplyr")

# group by all columns except points column and find max points
df %>% 
  group_by(across(c(-points))) %>% 
  mutate(max_points = max(points))

library("dplyr")

# group by all column except points column and find max points
df %>% 
  group_by(across(c(team, position, starter))) %>% 
  mutate(max_points = max(points))
