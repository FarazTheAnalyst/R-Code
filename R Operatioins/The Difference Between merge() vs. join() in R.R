# Example: The Difference Between merge() and join()
# define first data frame
df1 <- data.frame(team=c('Mavs', 'Hawks', 'Spurs', 'Nets'),
                  points=c(99, 93, 96, 104))

df1

# define second data frame
df2 <- data.frame(team=c('Mavs', 'Hawks', 'Spurs', 'Nets'),
                  assists=c(19, 18, 22, 25))

df2

# perform left join using base R
merge(df1, df2, by="team", all.x = TRUE)

library("dplyr")

# perform left join using dplyr
left_join(df1, df2, by="team")

