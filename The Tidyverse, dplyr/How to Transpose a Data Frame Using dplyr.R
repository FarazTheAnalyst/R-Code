# Note that the pipe operator (%>%) comes from the
# dplyr package while the pivot_wider() function comes
# from the tidyr package.

# Example: Transpose a Data Frame Using dplyr
# create data frame
df <- data.frame(team=c('Mavs', 'Nets', 'Kings', 'Lakers'),
                 points=c(99, 104, 119, 113))

# view data frame
df

# Now suppose we would like to transpose the data frame
# so that the team names are used as column names and the
# points values are used as the cell values inside the data frame.
library(dplyr)
library(tidyr)

# transpose data frame
df %>% 
  pivot_wider(names_from = team, values_from = points)

