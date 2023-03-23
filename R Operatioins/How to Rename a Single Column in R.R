# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Rename a Single Column Using Base R
# rename "points column to "total_points"
colnames(df)[colnames(df) == "points"] <- "total_points"

# view updated data frame
df

# rename column in position 2 to "total_points"
colnames(df)[2] <- "total_points"

# view updated data frame
df

# Example 2: Rename a Single Column Using dplyr
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

library("dplyr")

# rename "points" column to "total_points"
df <- df %>% 
  rename_at("points", ~"total_points"
  )

# view updated data frame
df

# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))
# rename column in position 2 to "total_points
df <- df %>% rename_at("points", ~"total_points")

# view updated data frame
df
