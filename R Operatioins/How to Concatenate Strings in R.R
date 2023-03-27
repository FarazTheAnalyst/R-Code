# Example 1: Concatenate String Vectors
# create three string variables
a <- "hey"
b <- "there"
c <- "friend"

# concatenate the three strings into one string
d <- paste(a, b, c)

# view result
d

# concatenate the three strings into one string, separated by dashes
d <- paste(a, b, c, sep = "-")

# view updated data
d

# create data frame
df <- data.frame(first=c('Andy', 'Bob', 'Carl', 'Doug'),
                 last=c('Smith', 'Miller', 'Johnson', 'Rogers'),
                 points=c(99, 90, 86, 88))

# view data frame
df

# concatenate "first" and "last" name columns into one column
df$name = paste(df$first, df$last)

# view updated data frame
df
