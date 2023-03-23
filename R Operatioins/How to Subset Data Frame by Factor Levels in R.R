# create data frame
df <- data.frame(team=factor(c('A', 'A', 'B', 'B', 'B', 'C')),
                 points=c(22, 35, 19, 15, 29, 23))

# view data frame
df

# Method 1: Subset by One Factor Level
subset <- df[df$team == "B", ]

# view updated data frame
df_sub

# Example 2: Subset by Multiple Factor Levels
# subset rows where team is equal to "A" or "C"
df_sub <- df[df$team %in% c("A", "C"), ]

# view updaed data frame
df_sub
