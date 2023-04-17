# You can use the anti_join() function from the dplyr package
# in R to return all rows in one data frame that do not have
# matching values in another data frame.

# Example 1: Use anti_join() with One Column
# create data frame
df1 <- data.frame(team=c('A', 'B', 'C', 'D', 'E'),
                  points=c(12, 14, 19, 24, 36))

df2 <- data.frame(team=c('A', 'B', 'C', 'F', 'G'),
                  points=c(12, 14, 19, 33, 17))

library("dplyr")

# perform anti join using "team" column
anti_join(df1, df2, by="team")

# Example 2: Use anti_join() with Multiple Columns
# create data frame
df1 <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                  position=c('G', 'G', 'F', 'G', 'F', 'C'),
                  points=c(12, 14, 19, 24, 36, 41))

df2 <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                  position=c('G', 'G', 'C', 'G', 'F', 'F'),
                  points=c(12, 14, 19, 33, 17, 22))

# We can use the anti_join() function to return all rows in the 
# first data frame that do not have a matching team and position 
# in the second data frame:
library("dplyr")

# perform anti join using "team" and position columns
anti_join(df1, df2, by=c("team", "position"))



















