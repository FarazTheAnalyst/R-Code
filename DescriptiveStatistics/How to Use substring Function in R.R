# create data frame
df <- data.frame(team=c("Mavericks", "Hornets", "Rockets", "Grizzlies"))

# view data frame
df

# create new column that contains characters between positioins 2 and 5
df$between2_5 <- substring(df$team, first=2, last=5)

# view updated data frame
df

# create new column that contains first 3 characters
df$first3 <- substring(df$team, first=1, last=3)

# view updated data frame
df

# create new column that contains last 3 characters
df$last <- substring(df$team, first=nchar(df$team)-3+1, last=nchar(df$team))

# veiw updated data frame
df

# replace first 3 characters with asterisks in team column
substring(df$team, first=1, last=3) <- "***"

# veiw updated data frame
df





