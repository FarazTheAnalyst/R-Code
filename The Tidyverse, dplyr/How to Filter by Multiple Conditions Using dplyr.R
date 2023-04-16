# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Method 1: Filter by Multiple Conditions Using OR
library("dplyr")

# filter for rows where team is equal to "A" or points is greater than 90
df %>% 
  filter(team == "A" | points > 90)

library(dplyr)

# filter for rows where team is equal to "A" or "C" or pointss is less than 90
df %>% 
  filter(team == "A" | team  == "C" | points < 90)

# Method 2: Filter by Multiple Conditions Using AND
library(dplyr)

# filter for rows where team is equal to "A" and points is greater than 90
df %>% 
  filter(team == "A" & points > 90)

library(dplyr)

# filter where team is equal to "A" and points > 89 and assists < 30
df %>% 
  filter(team == "A" & points > 89 & assists < 30)








