# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(22, 34, 30, 12, 18),
                 assists=c(7, 9, 9, 12, 14))

# view data frame
df

# Example 1: Rename Multiple Columns Using rename()
library("dplyr")

# rename team and points columns 
df2 <- df %>% rename(team_new = team, points_new = points)

# view updated data frame
df2

# Example 2: Rename Multiple Columns Using rename_with()
library("dplyr")

# define new names
new <- c("team_new", "points_new")

# rename old names with new names
df2 <- df %>% rename_with(~new, all_of(old))

# view updated data frame
df2
















