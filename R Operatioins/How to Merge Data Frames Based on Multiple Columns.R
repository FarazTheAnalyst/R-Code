# Example: Merge Data Frames on Multiple Columns
# define data frame
df1 = data.frame(playerID=c(1, 2, 3, 4, 5, 6),
                 team=c('A', 'B', 'B', 'B', 'C', 'C'),
                 points=c(19, 22, 25, 29, 34, 39))

df2 = data.frame(playerID=c(1, 2, 3, 4),
                 tm=c('A', 'B', 'B', 'B'),
                 rebounds=c(7, 8, 8, 14))

# view first data frame
df1

# view second data frame
df2

# merge two data frames
merged = merge(df1, df2, by.x=c('playerID', 'team'), by.y=c('playerID', 'tm'))

# view merged data frame
merged
