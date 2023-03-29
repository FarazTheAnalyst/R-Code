# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 points=c(19, 14, 14, 29, 25, 30),
                 assists=c(4, 5, 5, 4, 12, 10),
                 rebounds=c(9, 7, 7, 6, 10, 11))

# view data frame
df

# Method 1: Specify Columns to Keep
# keep "team" and "assists" columns
new_df = subset(df, select = c(team, assists))

# view new data frame
new_df

# Method 2: Specify Columns to Drop
# drop "team" and "assists" columns
new_df <- subset(df, select = -c(team, assists))

# view new data frame
new_df
