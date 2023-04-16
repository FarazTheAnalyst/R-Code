# When using the summarise() function in dplyr, all variables not
# included in the summarise() or group_by() functions will automatically 
# be dropped.
# However, you can use the mutate() function to summarize data while
# keeping all of the columns in the data frame.

# Example: Summarise Data But Keep All Columns Using dplyr
# create data frame
df <- data.frame(team=rep(c('A', 'B', 'C'), each=3),
                 points=c(4, 9, 8, 12, 15, 14, 29, 30, 22),
                 assists=c(3, 3, 2, 5, 8, 10, 4, 5, 12))

# view data frame
df

library("dplyr")

# summarize mean points values by team
df %>% 
  group_by(team) %>% 
  summarise(mean_pts = mean(points))

library("dplyr")

# summarise mean points values by team and keep all columns
df %>% 
  group_by(team) %>% 
  mutate(mean_pts = mean(points)) %>% 
  ungroup()
