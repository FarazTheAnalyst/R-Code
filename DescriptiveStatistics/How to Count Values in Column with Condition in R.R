# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 points=c(10, 12, 3, 14, 22, 15, 17, 17))

# view data frame
df

# count values in one column with condition
# count number of rows where team is equal to "B"
nrow(df[df$team == "B", ])

# count number of rows where team is equal to "B" and position is equal to F
nrow(df[df$team == "B" & df$position == "F", ])

# count rows where team is "B" and position is "G" AND points > 20
nrow(df[df$team == "B" & df$position == "G" & df$points > 20, ])
