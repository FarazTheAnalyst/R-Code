# create frist data frame
df1 = data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'),
                 points=c(18, 22, 19, 14, 14, 11, 20, 28))

df1

# define second data frame
df2 = data.frame(team=c('A', 'B', 'C', 'D', 'L', 'M'),
                 assists=c(4, 9, 14, 13, 10, 8))

df2

# Example 1: Outer Join Using Base R
# perform outer join using base R
df3 <- merge(df1, df2, by = "team", all = TRUE)

# view result
df3

# Example 2: Outer Join Using dplyr
library("dplyr")

# perform outer join using dplyr
df3 <- full_join(df1, df2, by = "team")

# view result
df3
