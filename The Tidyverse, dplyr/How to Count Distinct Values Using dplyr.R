library("dplyr")

# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(6, 6, 8, 10, 9, 9, 12, 12),
                 assists=c(3, 6, 4, 2, 4, 5, 5, 9))

# view data frame
df

# Method 1: Count Distinct Values in One Column
# count distinct values in "team" column
n_distinct(df$team)

# Method 2: Count Distinct Values in All Columns
# count distinct values in every column
sapply(df, function(x) n_distinct(x))

# Method 3: Count Distinct Values by Group
# count distinct "points" values by "team"
df %>% 
  group_by(team) %>% 
  summarize(distinct_points = n_distinct(points))
