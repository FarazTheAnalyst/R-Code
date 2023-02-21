# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 player=c('G', 'F', 'C', 'G', 'F', 'C'),
                 points=c(22, 34, 20, 15, 14, 19),
                 assists=c(4, 10, 12, 9, 8, 5))

# view data frame
df

# pivot values in points and assists columns
df_wide <- pivot_wider(df, names_from = player, values_from = c(points, assists))

# view data frame
df_wide
