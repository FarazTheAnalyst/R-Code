# The VLOOKUP function in Excel allows you to look up a value in a table by
# matching on a column.
# VLOOKUP Using Base R
# create first data frame
df1 <- data.frame(player=LETTERS[1:15],
                  team=rep(c('Mavs', 'Lakers', 'Rockets'), each=5))

#create second data frame 
df2 <- data.frame(player=LETTERS[1:15],
                  points=c(14, 15, 15, 16, 8, 9, 16, 27, 30, 24, 14, 19, 8, 6, 5))

# merge the two data frames
merge(df1, df2, by="player")

# VLOOKUP Using dplyr
library("dplyr")

# create first data frame
df1 <- data.frame(player=LETTERS[1:15],
                  team=rep(c('Mavs', 'Lakers', 'Rockets'), each=5))

#create second data frame 
df2 <- data.frame(player=LETTERS[1:15],
                  points=c(14, 15, 15, 16, 8, 9, 16, 27, 30, 24, 14, 19, 8, 6, 5))

# merge the two data frames using inner_join
inner_join(df1, df2, by="player")
