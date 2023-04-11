# How to Reproduce the Error
# create data frame
df <- data.frame(team=c('A', 'B', 'C'),
                 points=c(91910, 14015, 120215))

# view data frame
df

# attempt to split valeus in points column where the number 1 occurs:
strsplit(df$points, split = "1")

# display class of "points" variable
class(df$points)

# How to Fix the Error
# split values in points column based on were 1 appears
strsplit(as.character(df$points), split = "1")
