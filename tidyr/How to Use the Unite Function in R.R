# The unite() function from the tidyr package can be used
# to unite multiple data frame columns into a single column.

# Example 1: Unite Two Columns into One Column
# create  data frame
df <- data.frame(player=c('A', 'A', 'B', 'B', 'C', 'C'),
                 year=c(1, 2, 1, 2, 1, 2),
                 points=c(22, 29, 18, 11, 12, 19),
                 assists=c(2, 3, 6, 8, 5, 2))

# view data frame
df

library("tidyr")

# unite points and assists columns into single column
unite(df, col = "points-assists", c("points", "assists"), sep="-")

# Example 2: Unite More Than Two Columns
# create dta frame
df2 <- data.frame(player=c('A', 'A', 'B', 'B', 'C', 'C'),
                  year=c(1, 2, 1, 2, 1, 2),
                  points=c(22, 29, 18, 11, 12, 19),
                  assists=c(2, 3, 6, 8, 5, 2),
                  blocks=c(2, 3, 3, 2, 1, 0))

# view data frame
df2

library("tidyr")

# unite points, assists, and blocks column into single column
unite(df2, col = "stats", c("points", "assists", "blocks"), sep="/")


















