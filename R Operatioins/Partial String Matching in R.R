# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E', 'F', 'G'),
                 position=c('S Guard', 'P Guard', 'P Guard', 'S Forward',
                            'P Forward', 'Center', 'Center'),
                 points=c(28, 17, 19, 14, 23, 26, 5))

# view data frame
df

# Example 1: Find Partial Match in a Specific Column
df[grep("Gua", df$position), ]

# find rows in the data frame contain the string "P Gua" in the positon column
df[grep("P Gua", df$position), ]

# Example 2: Find Several Partial Matches
df[grep("S Gua|Cen", df$position), ]

df[grep("A|C|D|F|G", df$player), ]
