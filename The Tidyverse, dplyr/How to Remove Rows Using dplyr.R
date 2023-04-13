library("dplyr")

# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C'),
                 points=c(4, NA, 7, 5, 9, 9),
                 assists=c(1, 3, 5, NA, 2, 2))

# view data frame
df

# Example 1: Remove Any Row with NA's
# remove any row with NA
df %>% 
  na.omit()

# Example 2: Remove Any Row with NA's in Specific Columns
df %>% 
  filter(!is.na(points))

# Example 3: Remove Duplicate Rows
# remove duplicate rows
df %>% 
  distinct()

# Example 4: Remove Rows by Index Position
# remove rows 1, 2, and 4
df %>% 
  filter(!row_number() %in% C(1, 2, 4))

# Example 5: Remove Rows Based on Condition
# only keep rows where team is equal to "A" points is greater than B
df %>% 
  filter(team=="A" | points > 8)
