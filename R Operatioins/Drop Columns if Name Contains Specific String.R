# create data frame
df <- data.frame(team_name=c('A', 'B', 'C', 'D', 'E', 'F'),
                 team_location=c('AU', 'AU', 'EU', 'EU', 'AU', 'EU'),
                 player_name=c('Andy', 'Bob', 'Chad', 'Dan', 'Ed', 'Fran'),
                 points=c(22, 29, 35, 30, 18, 12))

# view data frame
df

# Example 1: Drop Columns if Name Contains Specific String
library("dplyr")

# drop columns that contain "team"
df_new <- df %>% select(-contains("team"))

# view new data frame
df_new

# Example 2: Drop Columns if Name Contains One of Several
# Specific Strings

# drop columns whose name contains "player" or "points"
df_new <- df %>% select(-contains(c("player", "points")))

# view new data frame
df_new
