# Example 1: Use bind_rows()
library("dplyr")

# create data frames
df1 <- data.frame(team=c('A', 'A', 'B', 'B'),
                  points=c(12, 14, 19, 24))


df2 <- data.frame(team=c('A', 'B', 'C', 'C'),
                  points=c(8, 17, 22, 25))

df3 <- data.frame(team=c('A', 'B', 'C', 'C'),
                  assists=c(4, 9, 12, 6))

# row bind together  data frames
bind_rows(df1, df2, df3)

# Notice that this function automatically fills in missing values
# with NA if the data frames do not all have the same column names.
# Example 2: Use bind_cols()
library("dplyr")

# create data frame
df1 <- data.frame(team=c('A', 'A', 'B', 'B'),
                  points=c(12, 14, 19, 24))


df2 <- data.frame(team=c('A', 'B', 'C', 'C'),
                  points=c(8, 17, 22, 25))

df3 <- data.frame(team=c('A', 'B', 'C', 'C'),
                  assists=c(4, 9, 12, 6))

# column bind together data frames
bind_cols(df1, df2, df3)
