# Example: How to Use grepl() with Multiple Patterns in R
# create data frame
df <- data.frame(team=c('Mavs', 'Hawks', 'Nets', 'Heat', 'Cavs'),
                 points=c(104, 115, 124, 120, 112),
                 status=c('Bad', 'Good', 'Excellent', 'Great', 'Bad'))

# view data frame
df
library("dplyr")

# define patterns to search for
my_patterns <- c("Good", "Gre", "Ex")

# filter for rows where status column contains one of several strings
new_df <- filter(df, grepl(paste(my_patterns, collapse = "|"), status))

# view results
new_df

