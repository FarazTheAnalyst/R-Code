# Example 1: Gather Values From Two Columns
# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D'),
                 year1=c(12, 15, 19, 19),
                 year2=c(22, 29, 18, 12))

# view data frame
df

library("tidyr")

# gather data from columns 2 and 3
gather(df, key=year, value=points, 2:3)

# Example 2: Gather Values From More Than Two Columns
# create data frame
df2 <- data.frame(player=c('A', 'B', 'C', 'D'),
                  year1=c(12, 15, 19, 19),
                  year2=c(22, 29, 18, 12),
                  year3=c(17, 17, 22, 25))

# view data frame
df2

library("tidyr")

# gather data from column 2, 3, and 4
gather(df2, key="year", value="points", 2:4)
