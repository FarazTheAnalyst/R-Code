# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 position=c('Guard23', 'Guard14', '2Forward',
                            'Guard25', '6Forward', 'Center99'))

# view data frame
df

# Example 1: Extract Number from String Using Base R
# extract number from each string in "position" column
as.numeric(gsub("\\D", "", df$position))

# create new column that contains numbers from each string in 
# "position" column
df$num <- as.numeric(gsub("\\D", "", df$position))

# view updated data frame
df

# Example 2: Extract Number from String Using reader Package
library(readr)

# extract number from each string in "position" column
parse_number(df$position)
