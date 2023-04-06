# Example 1: Add Character Column Based on Other Columns
# create data frame
df <- data.frame(team=c('Mavs', 'Cavs', 'Spurs', 'Nets'),
                 scored=c(99, 90, 84, 96),
                 allowed=c(95, 80, 87, 95))

# view data frame
df

# add "result" column based on values in "scored" and "allowed" columns
df$result <- with(df, ifelse(scored > allowed, "Win", "Loss"))

# view updated data frame
df

# create data frame
df <- data.frame(team=c('Mavs', 'Cavs', 'Spurs', 'Nets'),
                 scored=c(99, 90, 84, 96),
                 allowed=c(95, 80, 87, 95))

# view data frame
df

# add "quality" column based on values in "scored" and "allowed" columns
df$quality <- with(df, ifelse(scored > 95, "great",
                              ifelse(scored > 85, "good", "bad")))

# view updated data frame
df

# Example 2: Add Numeric Column Based on Other Columns
# create data frame
df <- data.frame(team=c('Mavs', 'Cavs', 'Spurs', 'Nets'),
                 scored=c(99, 90, 84, 96),
                 allowed=c(95, 80, 87, 95))

# view data frame
df

# add "lower_score" column based on values in "scored" and "allowed" columns
df$lower_score <- with(df, ifelse(scored > allowed, allowed, scored))

# view updated data frame
df






















