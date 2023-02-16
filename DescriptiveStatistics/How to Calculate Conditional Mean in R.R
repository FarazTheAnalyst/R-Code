#create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 points=c(99, 90, 93, 86, 88, 82),
                 assists=c(33, 28, 31, 39, 34, 30))

# view data frame
df

# calculate mean of "points" column for rows where team equals "A"
mean(df[df$team == "A", "points"])

#calculate mean of 'assists' column for rows where 'points' >= 90
mean(df[df$points >=90, "assists"])
