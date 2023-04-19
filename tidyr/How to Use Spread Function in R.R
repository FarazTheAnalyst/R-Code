# Example 1: Spread Values Across Two Columns
# create data frame
df <- data.frame(player=rep(c('A', 'B'), each=4),
                 year=rep(c(1, 1, 2, 2), times=2),
                 stat=rep(c('points', 'assists'), times=4),
                 amount=c(14, 6, 18, 7, 22, 9, 38, 4))

# view data frame
df

library("tidyr")

# spread stat column across multiple columns
spread(df, key=stat, value = amount)

# Example 2: Spread Values Across More Than Two Columns
# create data framee
df2 <- data.frame(player=rep(c('A'), times=8),
                  year=rep(c(1, 2), each=4),
                  stat=rep(c('points', 'assists', 'steals', 'blocks'), times=2),
                  amount=c(14, 6, 2, 1, 29, 9, 3, 4))

# view data frame
df2

library("tidyr")

# spread stat column across multiple columns
spread(df2, key=stat, value = amount)
