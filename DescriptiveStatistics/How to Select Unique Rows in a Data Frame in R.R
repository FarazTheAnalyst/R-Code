# create data frame
df <-  data.frame(team=c("A", "A", "A", "A", "B", "B", "B", "B"),
                  position=c("G", "G", "F", "F", "G", "G", "F", "F"),
                  points=c(10, 10, 8, 14, 15, 15, 17, 17))

 #view data frame
df

# select unique rows across all columns
library("dplyr")
df %>% distinct()

# unique rows based on one column
library(dplyr)

# select rows with unique values based on team column only
df %>% distinct(team, .keep_all = TRUE)

# select unique rows based on multiple columns
library("dplyr")
df %>% distinct(team, position, .keep_all = TRUE)

























