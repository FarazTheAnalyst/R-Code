# create data frame
df = data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                position=c('G', 'G', 'G', 'F', 'G', 'G', 'F', 'F'),
                points=c(5, 5, 8, 10, 5, 7, 10, 10))

# view data frame
df

# Example 1: Count Duplicate Values in One Column
# count number of duplicate values in points column
sum(duplicated(df$points))

# Example 2: Count Duplicate Rows
# count number of duplicate rows
nrow(df[duplicated(df), ])

# display duplicated rows
df[duplicated(df), ]

# Example 3: Count Duplicates for Each Unique Row
library("dplyr")

# count number of duplicate rows in data frame
df %>% group_by_all() %>% count
