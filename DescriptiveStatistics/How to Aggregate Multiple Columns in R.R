# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C'),
                 conf=c('E', 'E', 'W', 'W', 'W', 'W', 'W', 'W'),
                 points=c(1, 3, 3, 4, 5, 7, 7, 9),
                 rebounds=c(7, 7, 8, 3, 2, 7, 14, 13))

# view data frame
df

# summarize one variable & group by one varible
# find mean points scored, grouped by team
aggregate(points ~ team, data = df, FUN = mean, na.rm = TRUE)

# Summarize One Variable & Group by Multiple Variables
# find mean points scored, grouped by team and conferece
aggregate(points ~ team + conf, data = df, FUN = mean , na.rm = TRUE)

# Summarize Multiple Variables & Group by One Variable
# find mean points scored, grouped by team and conference
aggregate(cbind(points, rebounds) ~ team, data = df, FUN = mean, na.rm = TRUE)

# Summarize Multiple Variables & Group by Multiple Variables
# find mean points scored, grouped by team and conferece
aggregate(cbind(points, rebounds) ~ team + conf, data = df, FUN = mean, na.rm = TRUE)
