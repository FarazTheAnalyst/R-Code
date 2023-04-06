# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E', 'F', 'G'),
                 points=c(28, 17, 19, 14, 23, 26, 5),
                 rebounds=c(5, 6, 4, 7, 14, 12, 9),
                 assists=c(10, 13, 7, 8, 4, 5, 8))

# view data frame
df

# Example 1: Find the Max Across Specific Columns
# find max values in each row across points and rebounds columns
pmax(df$points, df$rebounds)

# Example 2: Add A New Column Containing the Max Value
# add new column that cantains max values across points and rebounds columns
df$max_points_rebs <- pmax(df$points, df$rebounds)

# view data fraem
df

# Example 3: Add Several New Columns Containing Max Values
# add new column that contains  max values across points and rebounds columns
df$max_p_r <- pmax(df$points, df$rebounds)

# add new column that contains max values across rebounds and assists columns
df$max_r_a <- pmax(df$rebounds, df$assists)

# view data frame
df
