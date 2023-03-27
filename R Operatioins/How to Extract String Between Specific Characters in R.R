# create data frame
df <- data.frame(team=c('team Mavs pro', 'team Heat pro', 'team Nets pro'),
                 points=c(114, 135, 119))

# view data frame
df

# Example 1: Extract String Between Specific Characters Using Base R
# create new column that extracts string between team and pro
df$team_name <- gsub(".*team (.+) pro.*", "\\1", df$team)

# view updated data frame
df

# Example 2: Extract String Between Specific Characters Using stringr Package
library("stringr")

# create new column that extracts string between team and pro
df$team_name <- str_match(df$team, "team\\s*(.*?)\\s*pro")[, 2]

# view updated data frame
df
