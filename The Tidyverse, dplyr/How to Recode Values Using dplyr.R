# Example 1: Recode a Single Column in a Dataframe
library("dplyr")

# create dataframe
df <- data.frame(player = c('A', 'B', 'C', 'D'),
                 points = c(24, 29, 13, 15),
                 result = c('Win', 'Loss', 'Win', 'Loss'))

# view data frame
df

# change "Win" and "Loss" to "1" and "0"
df %>% mutate(result=recode(result, "Win"="1", "Loss"="0"))

# Example 2: Recode a Single Column in a Dataframe and Provide NA Values
library("dplyr")

# create dataframe
df <- data.frame(player = c('A', 'B', 'C', 'D'),
                 points = c(24, 29, 13, 15),
                 result = c('Win', 'Loss', 'Win', 'Loss'))

# view dataframe
df

# change "Win" to "1" and give all other values a value of NA
df %>% mutate(result=recode(result, "Win"="1", .default = NA_character_))

# Example 3: Recode Multiple Columns in a Dataframe
library("dplyr")

# create dataframe
df <- data.frame(player = c('A', 'B', 'C', 'D'),
                 points = c(24, 29, 13, 15),
                 result = c('Win', 'Loss', 'Win', 'Loss'))

# recode "player" and "result" columns
df %>% mutate(player=recode(player, "A"="Z"),
              result=recode(result, "Win"="1", "Loss"="0"))









