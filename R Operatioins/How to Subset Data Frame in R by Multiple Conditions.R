# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 position=c('Guard', 'Guard', 'Forward',
                            'Guard', 'Forward', 'Forward'),
                 points=c(22, 25, 19, 22, 12, 35))

# veiw data frame
df

# Example 1: Subset Data Frame Using "OR" Logic
# subset data frame where team is "A" OR POINTS IS less than 20
df_sub <- subset(df, team == "A" | points < 20)

# view subset
df_sub

# Example 2: Subset Data Frame Using "AND" Logic
# subset data frame where team is "A" and points is less than 20
df_sub <- subset(df, team == "A" & points < 20)

# view subset
df_sub
