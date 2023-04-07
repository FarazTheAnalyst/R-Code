# create data frame
df <- data.frame(team=c('team_A', 'team_B', 'team_C', 'team_D'),
                 conference=c('West', 'West', 'East', 'East'),
                 points=c(88, 97, 94, 104))

# view data frame
df

# Example 1: Extract Substring in a String
library("stringr")

# extract characters in positions 5 through 6 of "team" column
str_sub(string = df$team, start = 5, end = 6)

# Example 2: Extract Substring Up to Specific Position
library("stringr")

# extract all characters up to position 4 in "team" column
str_sub(string=df$team, end=4)

# Example 3: Extract Substring Starting at Specific Position
library("stringr")

# extract all characters after position 2 in "team" column
str_sub(string=df$team, start=3)

# Example 4: Replace Substring in a String
library("stringr")

# replace all characters between position 1 and 5 in "team" column
str_sub(string=df$team, start=1, end=5) <- "TEAM"

# view updated data frame
df
