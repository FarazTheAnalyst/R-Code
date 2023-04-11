# This error usually occurs when you attempt to use
# the prcomp() function to perform principal components
# analysis in R, yet one or more of the columns in the data
# frame you're using is not numeric.

# Method 1: Convert Non-Numeric Columns to Numeric
# Method 2: Remove Non-Numeric Columns from Data Frame

# How to Reproduce the Error
# create data frame
df <- data.frame(team=c('A', 'A', 'C', 'B', 'C', 'B', 'B', 'C', 'A'),
                 points=c(12, 8, 26, 25, 38, 30, 24, 24, 15),
                 rebounds=c(10, 4, 5, 5, 4, 3, 8, 18, 22))

# view data frame
df

# attempt to calculate principle components
prcomp(df)

# Method 1: Convert Non-Numeric Columns to Numeric
# convert character column to numeric
df$team <- as.numeric(as.factor(df$team))

# view updated data frame
df

# calcualte principle components
prcomp(df)

# Method 2: Remove Non-Numeric Columns from Data Frame
# remove non-numeric columns form data frame

# create data frame
df <- data.frame(team=c('A', 'A', 'C', 'B', 'C', 'B', 'B', 'C', 'A'),
                 points=c(12, 8, 26, 25, 38, 30, 24, 24, 15),
                 rebounds=c(10, 4, 5, 5, 4, 3, 8, 18, 22))

df_new <- df[ , unlist(lapply(df, is.numeric))]

# view new data frame
df_new

# calcualte principal components
prcomp(df_new)
























