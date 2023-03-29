# create data frame
df <- data.frame(team=c('A', 'A', 'B', 'B', 'C', 'C', 'C'),
                 points=c(77, 81, 89, 83, 99, 92, 97),
                 assists=c(19, 22, 29, 15, 32, 39, 14))

# view data frame
df

# Example 1: Subset Data Frame by Selecting Columns
# select all for columns "team" and "assists"
df[ , c("team", "assists")]

# slelect all rows for clumns 1 and 3
df[ , c(1, 3)]

# Example 2: Subset Data Frame by Excluding Columns
# define columns to exclude
cols <- names(df) %in% c("points")

# exclude points column
df[!cols]

# exclude columns using index values
df[ , c(-2)]

# Example 3: Subset Data Frame by Selecting Rows
# select rows 1, 5, and 7
df[c(1, 5, 7), ]

# select rows 1 through 5
df[1:5, ]

# Example 4: Subset Data Frame Based on Conditions
# select rows where points is greater than 90
subset(df, points > 90)

# select rows points is greater than 90 or less than 80
subset(df, (points > 90) | (points < 80))

# select rows where points is grater than 90 and assists is greater than 30
subset(df, points > 90 & assists > 30)

# select rows wehre points is greater than 90 and only show "team" column
subset(df, points > 90, select = c("team"))























