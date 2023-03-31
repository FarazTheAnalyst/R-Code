# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(20, 20, 28, 14, 13, 18, 27, 13))

# view data frame
df

# Example 1: Use Base R
# create new data frame that removes duplicates so none are left
new_df <- df[!(duplicated(df) | duplicated(df, fromLast = TRUE)), ]

# view new data frame
new_df

# load dplyr
# create new data frame that removes duplicates so none are left
new_df <- df %>% 
  group_by(across(everything())) %>% 
  filter(n()==1)

# view new data frame 
new_df
