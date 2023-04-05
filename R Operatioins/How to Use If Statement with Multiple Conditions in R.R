# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(8, 8, 10, 13, 17, 19, 22, 25),
                 assists=c(5, 10, 9, 6, 8, 10, 11, 12))

# view data frame
df

# Example 1: If Statement with Multiple Conditions Using OR
# create new "rating" column using if statement with multiple conditions
df$rating <- ifelse(df$points>15 | df$assists>8, "good", "bad")

# view updated data frame
df

# Example 2: If Statement with Multiple Conditions Using AND
# create new "rating" column using if statement with multiple conditions
df$rating <- ifelse(df$points>15 & df$assists>8, "good", "bad")

# view updated data frame
df
