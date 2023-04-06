# Example 1: Use str_remove with Vector
library("stringr")

# create character vector
my_vector <- "Hey there everyone."

# remove first occurrence of "e" form vector
str_remove(my_vector, "e")

library(stringr)

# create character vector
my_vector <- "Hey there everyone."

# remove all occurrences of "e" form vector
str_remove_all(my_vector, "e")

# Example 2: Use str_remove with Data Frame
library("stringr")

# create data frame
df <- data.frame(team=c('Mavs', 'Cavs', 'Heat', 'Hawks'),
                 points=c(99, 94, 105, 122))

# view data frame
df

# remove every occurrence of "avs" in the team column
df$team <- str_remove(df$team, "avs")

# view updated data frame
df
