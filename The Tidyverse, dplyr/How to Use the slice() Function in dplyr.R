# create dataset
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'C', 'C'),
                 points=c(1, 2, 3, 4, 5, 6, 7),
                 assists=c(1, 5, 2, 3, 2, 2, 0))

# view dataset
df

# Example 1: Subset One Specific Row
# get row 3 only
df %>% slice(3)

# Example 2: Subset Several Rows
# get rows 2, 5, and 6
df %>% slice(2, 5, 6)

# Example 3: Subset A Range of Rows
# get rows 1 through 3
df %>% slice(1:3)

# Example 4: Subset Rows by Group
# get first row by group
df %>% 
  group_by(team) %>% 
  slice(1)
