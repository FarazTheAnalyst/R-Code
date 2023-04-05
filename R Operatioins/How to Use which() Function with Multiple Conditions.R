# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'),
                 points=c(10, 13, 13, 15, 19, 22, 24, 25, 29, 35))

# view data frame
df

# Example 1: which() with Multiple Conditions Using AND
# filter for players who score between 14 and 25 points
new_df <- df[which(df$points >= 14 & df$points <=25), ]

# view results
new_df

# Example 2: which() with Multiple Conditions Using OR
# filter for player who score less than 14 or greater than 25 points
new_df <- df[which(df$points < 14 | df$points > 25), ]

# view results
new_df
