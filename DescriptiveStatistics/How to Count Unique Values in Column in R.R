# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'C', 'C', 'D'),
                 points=c(10, 13, 14, 14, 18, 19, 20, 20, 22))

# view data frame
df

# Count Unique Values in Column Using Base R
# count unique values in points column
length(unique(df$points))

# count unique values in each column using sapply()
sapply(df, function(x) length(unique(x)))

# Count Unique Values in Column Using dplyr
library("dplyr")

# count unique values in points column
n_distinct(df$points)

# using dplyr() with sapply()
library("dplyr")

# count unique values in each column
sapply(df, function(x) n_distinct(x))
