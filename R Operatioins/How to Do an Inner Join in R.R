# define first data frame
df1 = data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                 points=c(18, 22, 19, 14, 14, 11, 20, 28))

df1

# define second data frame
df2 = data.frame(team=c('A', 'B', 'C', 'D', 'G', 'H'),
                 assists=c(4, 9, 14, 13, 10, 8))

df2

# Example 1: Inner Join Using Base R
# perform inner join using base R
df3 <- merge(df1, df2, by="team")

# view result
df3

# Example 2: Inner Join Using dplyr
library("dplyr")

# perform inner join using dplyr
df3 <- inner_join(df1, df2, by = "team")

# view result
df3
