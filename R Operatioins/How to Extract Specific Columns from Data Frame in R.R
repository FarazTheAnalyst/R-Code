# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28),
                 steals=c(9, 12, 4, 7, 8))

# view data frame
df

# Method 1: Extract Specific Columns Using Base R
# select "team", "assists" and "rebounds" columns
df[c("team", "assists", "rebounds")]

# select columns in index positions 1, 3, 4
df[c(1, 3, 4)]

# Method 2: Extract Specific Columns Using dplyr
library("dplyr")

# select "team", "assists" and "rebounds" columns
df %>% 
  select(team, assists, rebounds)

# select "team", "assists" and "rebounds" columns
df %>% 
  select(1, 3, 4)
