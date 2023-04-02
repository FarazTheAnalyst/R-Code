# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G'),
                 points=c(99, 90, 86, 88, 95, 99, 91),
                 assists=c(33, 28, 31, 39, 34, 35, 40))

# view data frame
df

# Example 1: Use head() from Base R
# select first 3 rows of data frame
head(df, 3)

# select first 6 rows of data frame
head(df)

# Example 2: Use indexing from Base R
# select first 3 rows of data frame
df[1:3, ]

# select first 3 rows of "team" and "points" columns only
df[1:3, c("team", "points")]

# Example 3: Use slice() from dplyr

# load dplyr
library("dplyr")

# select frist 3 rows of data frame
df %>% slice(1:3)
