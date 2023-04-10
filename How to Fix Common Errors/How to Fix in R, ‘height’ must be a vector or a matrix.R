# This error occurs when you attempt to use the barplot() 
# function to create a bar plot in R, yet you provide the name of
# a data frame instead of the name of a column within the data frame.
# How to Reproduce the Error

# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E'),
                 points=c(17, 12, 8, 9, 25))

# view data frame
df

# attempt to create bar plot
barplot(df)

# How to Fix the Error
# create bar plot to vusualize values i points column
# create bar plot to visualize  values in points column
barplot(df$points)

# create bar plot with labels
barplot(df$points, names=df$player, xlab="Player", ylab = "Points")
