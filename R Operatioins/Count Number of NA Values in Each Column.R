# create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                 points=c(99, 90, 86, 88, NA),
                 assists=c(33, NA, NA, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# Example 1: Count NA Values in Each Column Using Base R
# count NA values in each column
sapply(df, function(x) sum(is.na(x)))

library("dplyr")

# count NA values in each column using dplyr
df %>% summarise(across(everything(), ~ sum(is.na(.))))
