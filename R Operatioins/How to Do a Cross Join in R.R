# example perform corss join in R
# define first data frame
df1 = data.frame(team1=c('A', 'B', 'C', 'D'),
                 points=c(18, 22, 19, 14))

df1

# define second data frame
df2 = data.frame(team2=c('A', 'B', 'F'),
                 assists=c(4, 9, 8)) 

df2

library("tidyr")

# perform cross join
cross <- crossing(df1, df2)

# view result
cross
