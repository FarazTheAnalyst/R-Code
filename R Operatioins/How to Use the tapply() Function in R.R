# The tapply() function in R can be used to apply some function to
# a vector, grouped by another vector.
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'F', 'G', 'G', 'F', 'F'),
                 points=c(14, 19, 13, 8, 15, 15, 17, 19),
                 assists=c(4, 3, 3, 5, 9, 14, 15, 12))

# view data frame
df

# Example 1: tapply Function to One Variable, Grouped by One Variable
# calculate mean of points, grouped by team
tapply(df$points, df$team, mean)

# calculate mean of points, grouped by mean
tapply(df$points, df$team, mean, na.rm = TRUE)

# Example 2: Tapply Function to One Variable, Grouped by 
# Multiple Variables
# calculate mean of points, grouped by team and position
tapply(df$points, list(df$team, df$position), mean, na.rm=TRUE)
