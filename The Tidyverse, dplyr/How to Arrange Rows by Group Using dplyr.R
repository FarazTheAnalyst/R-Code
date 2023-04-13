# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 points=c(10, 12, 3, 14, 22, 15, 17, 17))

# view data frame
df

# Example 1: Arrange Rows in Ascending Order by Group
library("dplyr")

# arrange rows in ascending order by points, grouped by team
df %>% 
  group_by(team) %>% 
  arrange(points, .by_group = TRUE)

# Example 2: Arrange Rows in Descending Order by Group
library("dplyr")

# arrange rows in descending order by points, grouped by team
df %>% 
  group_by(team) %>% 
  arrange(desc(points), .by_group = TRUE)

# Example 3: Arrange Rows by Multiple Groups
library("dplyr")

# arrange rows in descending order by points, grouped by team and poistion
df %>% 
  group_by(team, position) %>% 
  arrange(points, .by_group = TRUE)
