# Example: Join on Multiple Columns Using dplyr
# define first dat frame
df1 = data.frame(team=c("A", "A", "B", "B"),
                 pos=c("G", "F", "F", "G"),
                 points=c(18, 22, 19, 14))

# view data frame
df1

# define second data frame
df2 = data.frame(team_name=c('A', 'A', 'B', 'C', 'C'),
                 position=c('G', 'F', 'F', 'G', 'F'),
                 assists=c(4, 9, 8, 6, 5))

# view data frame
df2

library("dplyr")

# perform left join based on multiple columns
df3 <- left_join(df1, df2, by=c("team"="team_name", "pos"="position"))

# view result
df3

# Also note that if the two data frames share the same column 
# names, you can simply use the following syntax to join on 
# multiple columns:

library("dplyr")

# perform left join based on multiple columns
# df3 <- left_join(df1, df2, by=c("team", "position"))



















