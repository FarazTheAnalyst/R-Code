# You can use the mutate() function from the dplyr package
# to add one or more columns to a data frame in R.
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, 14, 19, 24, 24, 22, 30, 9),
                 assists=c(4, 6, 6, 8, 3, 7, 8, 11))

# view data frame
df

# Example 1: Add Column at End of Data Frame
# add "blocks" column at end of data frame
library("dplyr")

df <- df %>% 
  mutate(blocks=c(1, 3, 3, 2, 4, 3, 6, 2))

# view data frame
df

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, 14, 19, 24, 24, 22, 30, 9),
                 assists=c(4, 6, 6, 8, 3, 7, 8, 11))

# add empty column at end of data frame
df <- df %>% 
  mutate(blocks=NA)

# view data frame
df

# Example 2: Add Column Before Specific Column
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, 14, 19, 24, 24, 22, 30, 9),
                 assists=c(4, 6, 6, 8, 3, 7, 8, 11))

# add "blocks" column before "points" column
df <- df %>% 
  mutate(blocks=c(1, 3, 3, 2, 4, 3, 6, 2),
         .before = points)

# view data frame
df

# Example 3: Add Column After Specific Column
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, 14, 19, 24, 24, 22, 30, 9),
                 assists=c(4, 6, 6, 8, 3, 7, 8, 11))

# add "blocks" column after "points" column
df <- df %>% 
  mutate(blocks = c(1, 3, 3, 2, 4, 3, 6, 2),
         .after = points)

# view data frame
df

# Example 4: Add Column Based on Other Columns
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, 14, 19, 24, 24, 22, 30, 9),
                 assists=c(4, 6, 6, 8, 3, 7, 8, 11))

# add "status" column whose values depend on value in "points" column
df <- df %>% 
  mutate(status=if_else(.$points > 20, "Good", "Bad"))

# view data frame
df
















































