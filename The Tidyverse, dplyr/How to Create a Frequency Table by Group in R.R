# Example: Create Frequency Table by Group
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'G', 'F', 'G', 'F', 'F', 'C'))

# view data frame
df

library("dplyr")

# calculate frequency of position, grouped by team
df %>% 
  group_by(team, position) %>% 
  summarise(Freq = n())

library("dplyr")

# calculate frequency of position, grouped by team
df %>% 
  group_by(team, position) %>% 
  summarize(count = n())
