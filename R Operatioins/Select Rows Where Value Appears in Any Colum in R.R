# Example 1: Find Value in Any Column
df = data.frame(points=c(25, 12, 15, 14, 19),
                assists=c(5, 7, 7, 9, 12),
                rebounds=c(11, 8, 10, 6, 6))

# view data frame
df

# select rows where 25 appears in any column
library("dplyr")
df %>% filter_all(any_vars(. %in% c(25)))

# select rows where 25, 9, 6 appears in any column
df %>% filter_all(any_vars(. %in% c(25, 9, 6)))

# Example 2: Find Character in Any Column
# define data frame
df = data.frame(points=c(25, 12, 15, 14, 19),
                assists=c(5, 7, 7, 9, 12),
                position=c('G', 'G', 'F', 'F', 'C'))

# view data frame
df

# select all the rows where character "G" is contained
df %>% filter_all(any_vars(. %in% c("G")))

# select all rows of the data frame that contain the valeus "G" or "C"
df %>% filter_all(any_vars(. %in% c("G", "C")))
