# create data frame
df <- data.frame(team = c('A', 'A', 'B', 'B', 'B', 'C', 'D'),
                 points = c(4, 7, 8, 8, 8, 9, 12),
                 rebounds = c(3, 3, 4, 4, 6, 7, 7))

# view data frame
df

# Example 1: How to Write a Basic If Else Statement
# create new column in data frame
df$rating <- ifelse(df$team == "A", "great", "bad")

# view data frame
df

# Example 2: How to Write a Nested If Else Statement
# create new column in data frame
df$rating <- ifelse(df$team == "A", "great",
                    ifelse(df$team == "B", "OK", "bad"))

# view data frame
df

# Example 3: How to Write Longer Nested If Else Statements
# create new column in data frame
df$rating <- ifelse(df$team == "A", "great",
                    ifelse(df$team == "B", "OK",
                           ifelse(df$team == "C", "decent", "bad")))

# view data frame
df
