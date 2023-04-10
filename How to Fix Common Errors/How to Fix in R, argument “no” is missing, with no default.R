# How to Reproduce the Error
# create data frame
df <- data.frame(team=c('B', 'B', 'B', 'B', 'C', 'C', 'C', 'D'),
                 points=c(12, 22, 35, 34, 20, 28, 30, 18),
                 assists=c(4, 10, 11, 12, 12, 8, 6, 10))

# view data frame
df

# attempt to create new column with team city
df$city <- ifelse(df$team=="B", "Boston")

# How to Fix the Error
# create new column with team city
df$city <- ifelse(df$team=="B", "Boston", "other")

# view updated data frame
df

