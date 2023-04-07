# Example 1: Use str_match with Vector
library("stringr")

# create vector of strings
x <- c("Mavs", "Cavs", "Heat", "Thundar", "Blazzers")

# extract strings that contain "avs"
str_match(x, pattern = "avs")

# Example 2: Use str_match with Data Frame
# create data frame
df <- data.frame(team=c('Mavs', 'Cavs', 'Heat', 'Thunder', 'Blazers'),
                 points=c(99, 104, 110, 103, 115))

# view data frame
df

library(stringr)

# create new column
df$match <- str_match(df$team, pattern = "avs")

# view updated data frame
df
