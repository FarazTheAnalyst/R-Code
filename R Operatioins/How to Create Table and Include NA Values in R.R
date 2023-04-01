# Example 1: Create Table and Always Display Number of NA Values
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(20, 25, 14, 18, 19, 12, 12, 15))

# view data frame
df

# create frequency table of values in team column, 
# including NA values
table(df$team, useNA = "always")

# Example 2: Create Table and Only Display Number of NA 
# Values if there are Some
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(20, 25, 14, 18, 19, 12, 12, 15))

# view data frame
df

# create frequency table of values in team column, including NA
# values if a any eaxist
table(df$team, useNA = "ifany")
