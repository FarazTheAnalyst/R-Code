# create a vector of data
data <- c("P Guard", "S Guard", "S Forward", "P Forward", "Center")

grep("Guard", data)

grepl("Guard", data)

# When to Use grepl()
# 1. Filter Rows that Contain a Certain String
library("dplyr")

# create data frame
df <- data.frame(player = c('P Guard', 'S Guard', 'S Forward', 'P Forward', 'Center'),
                 points = c(12, 15, 19, 22, 32),
                 rebounds = c(5, 7, 7, 12, 11))

# filter rows that contain the string "Guard" in the player coolumn
df %>% filter(grepl("Guard", player))

# When to Use grep()
# 1. Select Columns that Contain a Certain String
library("dplyr")

# create data frame
df <- data.frame(player = c('P Guard', 'S Guard', 'S Forward', 'P Forward', 'Center'),
                 points = c(12, 15, 19, 22, 32),
                 rebounds = c(5, 7, 7, 12, 11))

# select columns that contain the string "p" in their name
df %>% select(grep("p", colnames(df)))

# 2. Count the Number of Rows that Contain a Certain String
# create data frame
df <- data.frame(player = c('P Guard', 'S Guard', 'S Forward', 'P Forward', 'Center'),
                 points = c(12, 15, 19, 22, 32),
                 rebounds = c(5, 7, 7, 12, 11))

# count how many rows contain the string "Guard" in the player column
length(grep("Guard", df$player))

























