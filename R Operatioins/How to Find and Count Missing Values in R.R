# How to Find and Count Missing Values in R
# Example 1: Find and Count Missing Values in One Column
# create data frame
df <- data.frame(team=c('A', 'B', 'C', NA, 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(NA, 28, NA, NA, 34),
                 rebounds=c(30, 28, 24, 24, NA))

# view data frame
df

# identify total missing values in "assists" column
which(is.na(df$assists))

# count total missing values in "assists" column
sum(is.na(df$assists))

# Example 2: Count Missing Values in All Columns
# create data frame
df <- data.frame(team=c('A', 'B', 'C', NA, 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(NA, 28, NA, NA, 34),
                 rebounds=c(30, 28, 24, 24, NA))

# count total missing values in each column of data frame
sapply(df, function(x) sum(is.na(x)))

# Example 3: Count Missing Values in Entire Data Frame
# create dat frame
df <- data.frame(team=c('A', 'B', 'C', NA, 'E'),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(NA, 28, NA, NA, 34),
                 rebounds=c(30, 28, 24, 24, NA))

# count total missing values in entire data frame
sum(is.na(df))
