# Example: How to Arrange Rows in Custom Order Using dplyr
# create data frame
df <- data.frame(team=c('A', 'B', 'A', 'A', 'B', 'D', 'C', 'D', 'D', 'C'),
                 points=c(12, 20, 14, 34, 29, 22, 28, 15, 20, 13))

# view data frame
df

library("dplyr")

# arrange rows in  ascending order by team, then by points
df %>% 
  arrange(team, points)

library("dplyr")

# arrange rows in custom order based on "team" column, then by "points" column
df %>% 
  arrange(match(team, c("C", "B", "D", "A")), points)
