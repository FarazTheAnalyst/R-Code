# Often you may want to get the row numbers in a data frame in R that
# contain a certain value. Fortunately this is easy to
# do using the which() function

# Example 1: Get Row Numbers that Match a Certain Value
# create daframe
df = data.frame(points=c(25, 12, 15, 14, 19),
                assists=c(5, 7, 7, 9, 12),
                team=c('Mavs', 'Mavs', 'Spurs', 'Celtics', 'Warriors'))

# view data frame
df

# get row numbers where "team" is equal to Mavs
which(df$team == "Mavs")

# get row numbers "team" is equal to Mavs  or spurs
which(df$team %in% c("Mavs", "Spurs"))

# Example 2: Get Sum of Row Numbers
# find total number of rows where team is equal to Mavs
length(which(df$team == "Mavs"))

# Example 3: Return Data Frame with Certain Rows
df[which(df$team == "Mavs"), ]
