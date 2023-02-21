# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'C', 'C', 'C'),
                 points=c(10, 10, 14, 14, 18, 19, 20, 20, 20))

# view data frame
df

# count unique points values by team
aggregate(data=df, points~team, function(x) length(unique(x)))


# Count Unique Values by Group Using dplyr
library("dplyr")

# count unque points values by team
results <- df %>% 
  group_by(team) %>% 
  summarize(count = n_distinct(points))

# view results
results

# count unique values by group using data.table
library("data.table")

# convert data frame to data table
df <- data.table(df)

# count unique points values by team
results <- df[ , .(count = length(unique(points))), by = team]

# view results
results









