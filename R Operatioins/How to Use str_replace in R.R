# create data frame
df <- data.frame(team=c('team_A', 'team_B', 'team_C', 'team_D'),
                 conference=c('West', 'West', 'East', 'East'),
                 points=c(88, 97, 94, 104))

# view data frame
df

# Example 1: Replace String with Pattern
library("stringr")

# replace "West" with "Western" in the conference column
df$conference <- str_replace(df$conference, "West", "Western")

# view data frame
df

# Example 2: Replace String with Nothing
# replace "team_" with nothing in the team column
df$team <- str_replace(df$team, "team_", "")

# view data frame
df

# Example 3: Replace Multiple Strings
# create data frame
df <- data.frame(team=c('team_A', 'team_B', 'team_C', 'team_D'),
                 conference=c('West', 'West', 'East', 'East'),
                 points=c(88, 97, 94, 104))

# replace multiple words in the conference column
df$conference <- str_replace_all(df$conference, c("West" = "W", "East" = "E"))
# view data frame
df

