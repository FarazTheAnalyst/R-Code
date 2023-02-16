# create data frame
df <- data.frame(player=c("AJ", "Bob", "Chad", "Dan", "Eric", "Frank"),
                 position=c("A", "B", "B", "B", "B", "A"),
                 points=c(1, 2, 2, 1, 0, 0))

# viwe data frame
df
# calculate frequency table for position variable
table(df$position)

# frequency table of proportions for one variable
# calculate frequency table of proportions for position variable
# sum of the proportions will always be equal to 0
prop.table(table(df$position))

# frequency table for two variables
table(df$position, df$points)

# frequency table of proportions for two variables
# calculate frequency table of proportions for position and points vairable
prop.table(table(df$position, df$points))

# use options() to speicfy how many decimals t show in the proporiton table
# only display two decimal places
options(digits = 2)

# calculate frequency table of proportions for positions an points variable
prop.table(table(df$position, df$points))












