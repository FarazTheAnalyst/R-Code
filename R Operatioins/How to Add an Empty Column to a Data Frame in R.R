# Example 1: Add One Empty Column to Data Frame
# create data frame
df <- data.frame(team=c('Mavs', 'Mavs', 'Spurs', 'Nets'),
                 points=c(99, 90, 84, 96),
                 assists=c(22, 19, 16, 20))

# view data frame
df

# add new empty column
df[ , "blocks"] <- NA

# view updated data frame
df

# Example 2: Add Multiple Empty Columns to Data Frame
# create data frame
df <- data.frame(team=c('Mavs', 'Mavs', 'Spurs', 'Nets'),
                 points=c(99, 90, 84, 96),
                 assists=c(22, 19, 16, 20))

# view data frame
df

# define names of empty columns to add
empty_cols <- c("blocks", "rebounds", "steels")

# add myltiple empty columns
df[ , empty_cols] <- NA

# view updated data frame
df
