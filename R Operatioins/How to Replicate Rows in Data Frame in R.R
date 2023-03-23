# Example 1: Replicate Each Row the Same Number of Times
# create data frame
df <- data.frame(team=c('A', 'B'),
                 points=c(10, 15),
                 rebounds=c(4, 8),
                 assists=c(2, 5))

# view data frame
df

library(dplyr)

# create new data frame that repeats each row in original data frame 3 times
new_df <- df %>% slice(rep(1:n(), each=3))

# view new data frame
new_df
1:n()

# Example 2: Replicate Each Row a Different Number of Times
# create data frame
df <- data.frame(team=c('A', 'B'),
                 points=c(10, 15),
                 rebounds=c(4, 8),
                 assists=c(2, 5))

# view data frame
df

# create new data frame that repeats first row 3 times and second row 5 times
new_df <- df %>% slice(rep(1:n(), times = c(3, 5)))

# view new data frame
new_df

























