# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 points=c(19, 14, 14, 29, 25, 30),
                 assists=c(4, 5, 5, 4, 12, 10),
                 rebounds=c(9, 7, 7, 6, 10, 11))

# view data frame
df

# Example 1: Select Column Names from Existing Data Frame
# define new data frame
new_df <- df[c("team", "assists", "points")]

# view new data frame
new_df

# Example 2: Select & Rename Column Names from Existing Data Frame
# define new data frame
new_df <- data.frame("team_name" = df$team,
                     "total_assists" = df$assists,
                     "total_points" = df$points)

# view new data frame
new_df
