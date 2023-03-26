# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, NA, NA, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, NA))

# view data frame
df

# define new data frame
new_df <- df[ , colSums(is.na(df))==0]

# Example 2: Remove Columns with NA Values Using dplyr
library("dplyr")

# define new data frame
new_df <- df %>% 
  select_if(~ !any(is.na(.)))
