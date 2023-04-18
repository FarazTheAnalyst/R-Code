# create dataset
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'C', 'C'),
                 points=c(1, 2, 3, 4, 5, 6, 7),
                 assists=c(1, 5, 2, 3, 2, 2, 0),
                 rebounds=c(6, 6, 10, 12, 8, 8, 3))

# view dataset
df

# Example 1: Move One Column to Front
# move "assists" column to front
df %>% relocate(assists)

# Example 2: Move Several Columns to Front
df %>% reclocate(points, assists)

# Example 3: Move Column to Position After Another Column
# move "team" column to after "assists" column
df %>% relocate(team, .after=assists)

# #move 'team' column to before 'rebounds' column
df %>% relocate(team, .before = rebounds)
