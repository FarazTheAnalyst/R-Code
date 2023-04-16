# You can use the following basic syntax with the %in% 
# operator in R to filter for rows that contain a value in a list:
library(dplyr)

# Example: Using %in% to Filter for Rows with Value in List
# create data frame
df <- data.frame(team=c('Mavs', 'Pacers', 'Mavs', 'Celtics', 'Nets', 'Pacers'),
                 points=c(104, 110, 134, 125, 114, 124),
                 assists=c(22, 30, 35, 35, 20, 27))

# view data frame
df

library(dplyr)

# specify team names to keep
team_names <- c("Mavs", "Pacers", "Nets")

# slelect all rows where team is not in list of team names to keep
df_new <- df %>% filter(!team %in% team_names)

# view updatedd data frame
df_new

