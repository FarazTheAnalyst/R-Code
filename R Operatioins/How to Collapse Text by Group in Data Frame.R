# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 position=c('Guard', 'Guard', 'Forward',
                            'Guard', 'Forward', 'Center'))

# view data frame
df

# Example 1: Collapse Text by Group Using Base R
# collapse position values by team
aggregate(position ~ team, data=df, FUN=paste, collapse="")

# Example 2: Collapse Text by Group Using dplyr
library("dplyr")

# collapse position values by team
df %>% 
  group_by(team) %>% 
  summarise(position=paste(position, collapse=""))

# Example 3: Collapse Text by Group Using data.table
library(data.table)

# convert data frame to data table
dt <- as.data.table(df)

# collapse position values by team
dt[ , list(position=paste(position, collapse = "")), by=team]
