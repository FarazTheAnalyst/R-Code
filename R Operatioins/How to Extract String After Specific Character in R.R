# create data frame
df <- data.frame(team=c('theMavs', 'theHeat', 'theNets', 'theRockets'),
                 points=c(114, 135, 119, 140))

# view data frame
df

# Example 1: Extract String After Specific Characters Using Base R
# create new column that extracts string after "the" in the team column
df$team_name <- sub(".*the", "", df$team)

# view updated data frame
df

# Example 2: Extract String After Specific Characters Using stringr Package
library("stringr")

# create new column that extracts string after "the" in team column
df$team_name <- str_replace(df$team, "(.*?)the(.*?)", "\\1")

# view updated data frame
df
