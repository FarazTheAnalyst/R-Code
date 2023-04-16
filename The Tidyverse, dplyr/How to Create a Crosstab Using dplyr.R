# Example 1: Create Basic Crosstab
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'C', 'G', 'F', 'F', 'C'),
                 points=c(7, 7, 8, 11, 13, 15, 19, 13))

# view data frame
df

library(dplyr)
library(tidyr)

# produce crosstab
df %>% 
  group_by(team, position) %>%
  tally() %>% 
  spread(team, n)

library(dplyr)
library(tidyr)

# produce crosstab with "position" along columns
df %>% 
  group_by(team, position) %>% 
  tally() %>% 
  spread(position, n)
