# The cut() function in R can be used to cut a range of
# values into bins and specify labels for each bin.
# create data frame 
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'),
                 points=c(4, 7, 8, 12, 14, 16, 20, 26, 36))

# view data frame
df

# Example 1: Cut Vector Based on Number of Breaks
# create new column that places each player into four categories based on points
df$category <- cut(df$points, breaks = 4)

# view updated data frame
df

# Example 2: Cut Vector Based on Specific Break Points
# create new column based on specific break points
df$category <- cut(df$points, breaks=c(0, 10, 15, 20, 40))

# view udated data frame
df

# Example 3: Cut Vector Using Specific Break Points and Labels
# create new column based on values in points column
df$category <- cut(df$points, breaks = c(0, 10, 15, 20, 40),
                   labels=c("Bad", "Ok", "Good", "Great"))

# view udated data frame
df
