# How to Reproduce the Error
# create data frame
df <- data.frame(conference=c('W', 'W', 'W', 'E', 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34))	

# view data frame
df

# attempt to create new column based on conference name
df$conf_full[which(df$conference=="W")] <- "west"
df$conf_full[which(df$conference=="E")] <- "East"

# create conf_full variable
df$conf_full <- NA

# create new column based on conference
df$conf_full[which(df$conference=="W")] <- "West"
df$conf_full[which(df$conference=="E")] <- "East"

# view updated data frame
df
