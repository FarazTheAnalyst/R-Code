# Example: Select the First Row by Group in R
# create dataset
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C', 'C'),
                 points=c(4, 9, 7, 7, 6, 13, 8, 8, 4, 17))

# view dataset
df

library("dplyr")

# By default, arrange() sorts the values in ascending order 
df %>% 
  group_by(team) %>% 
  arrange(points) %>% 
  filter(row_number() == 1)

df %>% 
  group_by(team) %>% 
  arrange(desc(points)) %>% 
  filter(row_number()==1)

df %>% 
  group_by(team) %>% 
  arrange(desc(points)) %>% 
  filter(row_number()==2)

# Or you could use the following syntax to select the last row by group:
df %>% 
  group_by(team) %>% 
  arrange(desc(points)) %>% 
  filter(row_number()==n())

