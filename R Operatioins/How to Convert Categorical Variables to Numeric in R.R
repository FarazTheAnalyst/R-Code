# create data frame with some categorical variables
df <- data.frame(team=as.factor(c('A', 'B', 'C', 'D')),
                 conf=as.factor(c('AL', 'AL', 'NL', 'NL')),
                 win=as.factor(c('Yes', 'No', 'No', 'Yes')),
                 points=c(122, 98, 106, 115))

# view data frame
df

# Method 1: Convert One Categorical Variable to Numeric
# convert "team" variable to numeric
df$team <- unclass(df$team)

# view updated data frame
df

# Method 2: Convert Multiple Categorical Variables to Numeric
# convert "team" and "win" variables to numberic 
df[, c("team", "win")] <- sapply(df[, c("team", "win")], unclass)

# view updated data frame
df

# Method 3: Convert All Categorical Variables to Numeric
# convert all categorical variables to numeric
df[sapply(df, is.factor)] <- data.matrix(df[sapply(df, is.factor)])

# view updated data frame
df

