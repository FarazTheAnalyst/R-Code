# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                 points=c(10, 10, 8, 6, 15, 15, 12, 12),
                 rebounds=c(8, 8, 4, 3, 10, 11, 7, 7))

# view data frame
df

# Example 1: Filter by Specific Row Numbers
library("dplyr")

# filter for only rows 2, 3, and 8
df %>% slice(2, 3, 8)

# Example 2: Filter By Range of Row Numbers
library("dplyr")

# filter for rows between 2 and 5
df %>% slice(2:5)

