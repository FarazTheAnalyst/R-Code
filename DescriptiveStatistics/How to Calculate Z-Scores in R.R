# find z-scores for a single vector
# create vector of data
data <- c(6, 7, 7, 12, 13, 13, 15, 16, 19, 22)

# find z-score for each data value
z_scores <- (data-mean(data))/sd(data)

# display z_scores
z_scores

# find z_scores for single column in a data frame
# create data frame
df <- data.frame(assists = c(4, 4, 6, 7, 9, 13),
                 points = c(24, 29, 13, 15, 19, 22),
                 rebounds = c(5, 5, 7, 8, 14, 15))

# find z_scores for each data value n the  points column
z_scores <- (df$points-mean(df$points))/sd(df$points)

# diaplay z_scores
z_scores

# find z_scores for every column in a data frame
# create data frame
df <- data.frame(assists = c(4, 4, 6, 7, 9, 13),
                 points = c(24, 29, 13, 15, 19, 22),
                 rebounds = c(5, 5, 7, 8, 14, 15))

# find z-scores of each column using sapply()
sapply(df, function(df) (df-mean(df))/sd(df))




















