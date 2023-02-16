# use split() to split vector into groups
# create vector of data values
data <- c(1, 2, 3, 4, 5, 6)

# create vector of groups
groups <- c("A", "B", "B","B","C","C")

# split vector of data values into groups
split(x=data, f=groups)

# split vector of data values into groups and only display second group
split(x=data, f=groups)[[2]]

# create data frame
df <- data.frame(team=c("A", "A", "A", "B", "B", "B"),
                 position=c("G", "G", "F", "G", "F", "F"),
                 points=c(33, 28, 31, 39, 34, 44),
                 assists=c(30, 28, 24, 24, 28, 19))

# view data frame
df

# split data frame into groups into based on "team"
split(df, f=df$team)

# split data frame into groups based on "team" and position variables
split(df, f=list(df$team, df$position))













