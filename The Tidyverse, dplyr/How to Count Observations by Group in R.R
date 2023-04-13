# create data frame
df <- data.frame(team = c('A', 'A', 'A', 'B', 'B', 'B', 'B', 'B', 'C', 'C', 'C', 'C'),
                 position = c('G', 'G', 'F', 'G', 'F', 'F', 'F', 'G', 'G', 'F', 'F', 'F'),
                 points = c(4, 13, 7, 8, 15, 15, 17, 9, 21, 22, 25, 31))

# view data frame
df

# Example 1: Count by One Variable
library("dplyr")

# count total observations by variable "team"
df %>% count(team)

# count total observation vy variable "team"
df %>% count(team, sort = TRUE)

# Example 2: Count by Multiple Variables
# count total observation by "team" and "position"
df %>% count(team, position)

# Example 3: Weighted Count
df %>% count(team, wt=points)
