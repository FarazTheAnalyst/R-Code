# create data frame
df <- data.frame(team = c('A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position = c('G', 'F', 'F', 'G', 'G', 'G', 'F'),
                 points = c(12, 15, 19, 22, 32, 34, 39))

# view data frame
df

# Example 1: Relative Frequency of One Variable
library("dplyr")

df %>% 
  group_by(team) %>% 
  summarise(n=n()) %>%
  mutate(freq = n / sum(n))

# Example 2: Relative Frequency of Multiple Variables
df %>% 
  group_by(team, position) %>% 
  summarise(n = n()) %>% 
  mutate(freq = n / sum(n))

# Example 3: Display Relative Frequencies as Percentages
library("dplyr")

df %>% 
  group_by(team, position) %>% 
  summarize(n = n()) %>% 
  mutate(freq = paste0(round(100 * n/sum(n), 0), "%"))
