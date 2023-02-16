# create data frame
df <- data.frame(team=c("A", "A", "A", "B", "B","B"),
                 position=c("G", "G", "F", "G", "F", "F"),
                 points=c(99, 90, 86, 88, 95, 99),
                 assists=c(33, 28, 31, 39, 34, 23),
                 rebounds=c(30, 28, 24, 24, 28, 33))

# view data frame
df

# aggregate mean by group
# find mean points by team
aggregate(df$points, by=list(df$team), FUN=mean)
egg <- aggregate(df$points, by=list(df$team), FUN=mean)

# rename columns by team
colnames(egg) <- c("Team", "Mean_Points")

# view output
egg

# aggregate count by group
# count number of players by team
aggregate(df$points, by=list(df$team), FUN=length)

# aggregate sum by group
aggregate(df$points, by=list(df$team), FUN=sum)

# aggregate multiple columns
# find mean of points scored, grouped by team and position
aggregate(df$points, by=list(df$team, df$position), FUN=mean)














