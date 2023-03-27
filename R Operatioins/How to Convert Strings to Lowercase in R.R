# Example 1: Convert a Single String to Lowercase
# create string 
my_string <- "THIS IS A SENTENCE WITH WORDS."

# convert string to all lower case
tolower(my_string)

# Example 2: Convert Each String in Column to Lowercase
# create data frame
df <- data.frame(team=c('Mavs', 'Nets', 'Spurs'),
                 points=c(99, 94, 85),
                 rebounds=c(31, 22, 29))

# view data frame
df

# convert team names to lowercase
df$team <- tolower(df$team)

# view updated data frame
df

# Example 3: Convert Strings in Multiple Columns to Lowercase
# create data frame
df <- data.frame(team=c('Mavs', 'Nets', 'Spurs'),
                 conf=c('WEST', 'EAST', 'WEST'),
                 points=c(99, 94, 85))

# view data frame
df

# convert team and conference tolowercase
df[c("team", "conf")] <- sapply(df[c("team", "conf")], function(x) tolower(x))

# view updated data frame
df




















