# create data frame
df <- data.frame(athlete=c('A', 'B', 'C', 'D'),
                 distance=c('23.2 miles', '14 miles', '5 miles', '9.3 miles'))

# view data frame
df

# example1: Extract string before space using base R
df$distance_amount <- gsub(" ,*$", "", df$distance)

# view updated data frame
df

# Example 2: Extract String Before Space Using stringr Package
library("stringr")

# create new column that extracts string before space in distance
df$distance_amount <- word(df$distance, 1)

# view updated data frame
df
