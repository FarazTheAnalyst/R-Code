# define data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'A', 'B', 'B', 'C'),
                 wins=c(2, 9, 11, 12, 15, 17, 18, 19),
                 points=c(1, 2, 2, 2, 3, 3, 3, 3))

# view first few rows of data frame
head(df)

# calculate relative frequency table for "team" column
table(df$team)/length(df$team)

# relative frequency table for all data frame columns
# define data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'A', 'B', 'B', 'C'),
                 wins=c(2, 9, 11, 12, 15, 17, 18, 19),
                 points=c(1, 2, 2, 2, 3, 3, 3, 3))

# calculate relative frequency table for each column
sapply(df, function(x) table(x)/nrow(df))
