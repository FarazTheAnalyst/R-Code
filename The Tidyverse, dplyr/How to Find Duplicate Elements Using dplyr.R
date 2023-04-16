# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 points=c(10, 10, 8, 14, 15, 15, 17, 17))

# view data frame
df

# Example 1: Display All Duplicate Rows
library("dplyr")

# display all duplicate rows in data frame
df %>% 
  group_by_all() %>% 
  filter(n()>1) %>% 
  ungroup()

# Example 2: Display Duplicate Count for All Duplicated Rows
library(dplyr)

# display duplicate count for each row
df %>% 
  add_count(team, position, points) %>% 
  filter(n>1) %>% 
  distinct()
  