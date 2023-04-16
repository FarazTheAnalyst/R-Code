# Example 1: Filter for Rows that Do Not Contain Value in One Column
# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'D', 'D'),
                 position=c('G', 'G', 'F', 'G', 'F', 'C', 'C', 'C'),
                 points=c(12, 14, 19, 24, 36, 41, 18, 29))

# view  data frame
df

# filter for rows where team is not "A" or "B"
df %>% 
  filter(!team %in% c("A", "B"))

# Example 2: Filter for Rows that Do Not Contain Value in Multiple Columns
# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'D', 'D'),
                 position=c('G', 'G', 'F', 'G', 'F', 'C', 'C', 'C'),
                 points=c(12, 14, 19, 24, 36, 41, 18, 29))

# view data frame
df

# filter for rows where team name is not "A" and position is not "C"
df %>% 
  filter(!team %in% c("A") & !position %in% c("C"))
