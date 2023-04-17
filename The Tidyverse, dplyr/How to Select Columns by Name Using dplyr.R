# create data frame
df <- data.frame(points=c(1, 5, 4, 5, 5, 7, 8),
                 rebounds=c(10, 3, 3, 2, 6, 7, 12),
                 assists=c(5, 5, 7, 6, 7, 9, 15),
                 blocks=c(1, 1, 0, 4, 3, 2, 10))

# view data frame
df

# Example 1: Select Specific Columns by Name
library("dplyr")

# select only points and assists columns
df %>% select(points, assists)

# Example 2: Select a Range of Columns by Name
# select all columns between points assists
df %>% 
  select(points:assists)

# Example 3: Select All Columns Except Certain Columns
library("dplyr")

# select all columns excempt points and assists columns
df %>% select(-c(points, assists))
