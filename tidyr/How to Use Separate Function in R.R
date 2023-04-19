# The separate() function from the tidyr package can be used
# to separate a data frame column into multiple columns.

# Example 1: Separate Column into Two Columns
# create data frame
df <- data.frame(player=c('A', 'A', 'B', 'B', 'C', 'C'),
                 year=c(1, 2, 1, 2, 1, 2),
                 stats=c('22-2', '29-3', '18-6', '11-8', '12-5', '19-2'))

# view data frame
df

# We can use the separate() function to separate the stats column 
# into two new columns called "points" and "assists" as follows:
library("tidyr")

# separate stats column into points and assists columns
separate(df, col=stats, into=c("points", "assists"), sep = "-")

# Example 2: Separate Column into More Than Two Columns
# create data frame
df2 <- data.frame(player=c('A', 'A', 'B', 'B', 'C', 'C'),
                  year=c(1, 2, 1, 2, 1, 2),
                  stats=c('22/2/3', '29/3/4', '18/6/7', '11/1/2', '12/1/1', '19/2/4'))

# view data frame
df2

library("tidyr")

# separate stats column into three new columns
separate(df2, col=stats, into=c('points', 'assists', 'steals'), sep='/')























