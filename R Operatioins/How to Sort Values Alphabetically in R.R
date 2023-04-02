# Example 1: Sort a Vector Alphabetically
# define vector
x <- c('A', 'F', 'C', 'D', 'B', 'E')

# sort values in vector alphabetically
sort(x)

# Example 2: Sort Data Frame Column Alphabetically
# define data frame
df <- data.frame(player=c('A', 'F', 'C', 'D', 'B', 'E'),
                 points=c(14, 19, 22, 29, 31, 16))

# view data frame
df

# sort data frame alphabetically based on player column
df[order(df$player), ]

# Example 3: Sort Multiple Columns Alphabetically
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 player=c('A', 'F', 'C', 'D', 'B', 'E'),
                 points=c(14, 19, 22, 29, 31, 16))

# view data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 player=c('A', 'F', 'C', 'D', 'B', 'E'),
                 points=c(14, 19, 22, 29, 31, 16))

# view data frame
df

# sort data frame apphabetically by team, then by player
df[with(df, order(team, player)),]
