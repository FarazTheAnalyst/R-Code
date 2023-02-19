# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'A', 'B', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'G', 'F', 'F', 'G', 'G', 'F', 'F', 'F'),
                 starter=c('Yes', 'No', 'No', 'Yes', 'No',
                           'Yes', 'No', 'Yes', 'Yes', 'No'),
                 points=c(30, 28, 24, 24, 28, 14, 16, 20, 34, 29))

# view data frame
df

# create three-way table
three_way <- xtabs(~ team + position + starter, data = df)

# view three-way table
three_way

# convert table to ftable
three_way_ftable <- ftable(three_way)

# view ftable
three_way_ftable
