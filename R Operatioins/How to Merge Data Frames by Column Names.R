# Example 1: Merge Based on One Matching Column Name
# define data frames
df1 <- data.frame(team=c('A', 'B', 'C', 'D'),
                  points=c(88, 98, 104, 100))

df2 <- data.frame(team=c('A', 'B', 'C', 'D'),
                  rebounds=c(22, 31, 29, 20))

# merge based on one column with matching name
merge(df1, df2, by="team")

# CExample 2: Merge Based on One Unmatched Column Name
# define data frames
df1 <- data.frame(team=c('A', 'B', 'C', 'D'),
                  points=c(88, 98, 104, 100))

df2 <- data.frame(team_name=c('A', 'B', 'C', 'D'),
                  rebounds=c(22, 31, 29, 20))

# merge based on one column with unmatched name
merge(df1, df2, by.x = "team", by.y = "team_name")

# Example 3: Merge Based on Multiple Matching Column Names
df1 <- data.frame(team=c('A', 'A', 'B', 'B'),
                  position=c('G', 'F', 'G', 'F'),
                  points=c(88, 98, 104, 100))

df2 <- data.frame(team=c('A', 'A', 'B', 'B'),
                  position=c('G', 'F', 'G', 'F'),
                  rebounds=c(22, 31, 29, 20))

# merge based on multiple columns with matching names
merge(df1, df2, by=c("team", "position"))

# Example 4: Merge Based on Multiple Unmatched Column Names
# define data frames
df1 <- data.frame(team=c('A', 'A', 'B', 'B'),
                  position=c('G', 'F', 'G', 'F'),
                  points=c(88, 98, 104, 100))

df2 <- data.frame(team_name=c('A', 'A', 'B', 'B'),
                  position_name=c('G', 'F', 'G', 'F'),
                  rebounds=c(22, 31, 29, 20))

# merge based on multiple columns with matching names
merge(df1, df2, by.x = c("team", "position"), by.y = c("team_name", "position_name"))

























