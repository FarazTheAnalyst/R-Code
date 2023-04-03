# Example: Convert Table to Matrix in R
# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 position=c('G', 'G', 'F', 'C', 'G', 'F', 'C', 'C'))

# view data frame
df

# create frequency table of values for team and position
my_table <- table(df$team, df$position)

# view table
my_table

# display class of my_table
class(my_table)

# convert table to matrix
my_matrix <- matrix(my_table, ncol = ncol(my_table), dimnames =dimnames(my_table))

# view matrix
my_matrix

# display class of my_matrix
class(my_matrix)
