# How to Reproduce the Warning
# create data frame
df <- data.frame(team=factor(c('A', 'A', 'B', 'B', 'B')),
                 points=c(99, 90, 86, 88, 95))

# view data frame
df

# view structure of data frame
str(df)

# attempt to add a new row to the end of the data frame using
# a value of "C" for team:
# add new row to end of data frame
df[nrow(df) + 1, ] =  c("C", 100)

# view updated data frame
df

# How to Avoid the Warning
# #create data frame
df <- data.frame(team=factor(c('A', 'A', 'B', 'B', 'B')),
                 points=c(99, 90, 86, 88, 95))

# convert team variable to character
df$team <- as.character(df$team)

# add new row to end of data frame
df[nrow(df) + 1, ] <- c("C", 100)

# convert team variable back to factor
df$team <- as.factor(df$team)

# view updated data frame
df

# view structure of updated data frame
str(df)
