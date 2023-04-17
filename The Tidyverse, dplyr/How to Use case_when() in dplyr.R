# create data frame
df <- data.frame(player = c('AJ', 'Bob', 'Chad', 'Dan', 'Eric', 'Frank'),
                 position = c('G', 'F', 'F', 'G', 'C', NA),
                 points = c(12, 15, 19, 22, 32, NA),
                 assists = c(5, 7, 7, 12, 11, NA))

# view data frame
df

# Example 1: Create New Variable from One Existing Variable
df %>% 
  mutate(quality = case_when(points > 20 ~ "high",
                             points > 15 ~ "med",
                             TRUE ~"low"))

# Example 2: Create New Variable from Multiple Variables
df %>% 
  mutate(quality = case_when(points > 15 & assists > 10 ~ "great",
                             points > 15 & assists > 5 ~ "good",
                             TRUE ~"average"))

# Note that we can also use the is.na() function to explicitly
# assign strings to NA values:
df %>% 
  mutate(quality = case_when(is.na(points) ~ "missing",
                             points > 15 & assists > 10 ~ "great",
                             points > 15 & assists > 5 ~ "good",
                             TRUE ~ "average"))
