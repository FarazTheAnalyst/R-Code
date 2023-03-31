# define data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 position=c('Guard', 'Guard', 'Forward', 'Guard', 'Center', 'Center'))

# view data frame
df

# Example 1: Remove Duplicate Rows Using Base R
# remove duplicate rows form data frame
df[!duplicated(df), ]

# remove rows where there are duplicates in the "team" column
df[!duplicated(df[c("team")]), ]

# Example 2: Remove Duplicate Rows Using dplyr
library("dplyr")

# remove duplicate rows from data frame
df %>% 
  distinct(.keep_all = TRUE)

library("dplyr")

# remvoe diplicate rows form data frame
df %>% 
  distinct(team, .keep_all = TRUE)
