# create data frame
df <- data.frame(team=c("a", "a", "b", "b", "b", "c", "c"),
                 pts=c(5, 8, 14, 18, 5, 7, 7),
                 rebs=c(8, 8, 9, 3, 8, 7, 4),
                 blocks=c(1, 2, 2, 1, 0, 4, 1))

# view data frame
df

# perform sumif function on one column
aggregate(pts ~ team, data = df, sum)

# perform a sumif function on multiple columns
aggregate(cbind(pts, rebs) ~ team, data = df, sum)

# perform a sumif function on all columns
aggregate(. ~ team, data = df, sum)
