# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C'),
                 game1=c(10, 12, 17, 18, 24, 29, 29, 34),
                 game2=c(8, 10, 14, 15, NA, 19, 18, 29),
                 game3=c(4, 5, 5, 9, 12, 12, 18, 20))

# view data frame
df

library("dplyr")

# calculate mean value in each row for game1, game2 and game3 columns
df %>% 
  rowwise() %>% 
  mutate(game_mean) = mean(c_across(c("game1", "game2", "game3")), na.rm=TRUE)

# Note that we could also use the starts_with() function to specify 
# that we'd like to calculate the mean value of each row for only the
# columns that start with 'game' in the column name:
library("dplyr")

# calculate mean value in each row for columns taht start with "game"
df %>% 
  rowwise() %>% 
  mutate(game_mean = mean(c_across(c(starts_with("game"))), na.rm = TRUE))
