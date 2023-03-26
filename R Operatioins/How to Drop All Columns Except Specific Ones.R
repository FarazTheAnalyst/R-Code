# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                 points=c(18, 22, 19, 14, 14, 11, 20, 28),
                 assists=c(5, 7, 7, 9, 12, 9, 9, 4),
                 rebounds=c(11, 8, 10, 6, 6, 5, 9, 12),
                 steals=c(4, 3, 3, 2, 5, 4, 3, 8),
                 blocks=c(1, 0, 0, 3, 2, 2, 1, 5))

# view data frame
df

# drop all columns except points and blocks
df <- df(c("points", "blocks"))

# view updated data frame
df

# Example 2: Drop All Columns Except Specific Ones Using dplyr
library("dplyr")

# drop all columns except points and blocks
df <- df %>% select(points, blocks)

# view updated data frame
df

