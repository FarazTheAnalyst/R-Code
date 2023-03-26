# create data frame
df <- data.frame(points=c(1, 2, 4, 3, 4, 8),
                 assists=c(6, 6, 7, 8, 8, 9),
                 team=c('A', 'A', 'A', 'B', 'C', 'C'))

# view data frame
df

# select rows where team is equal to "A"
df[df$team == "A", ]

# select rows where team is not equal to "A"
df[df$team !="A", ]

# Method 2: Select Rows Based on Multiple Conditions
# select rows where team is equal to "A"  and points is greater than 1
df[df$team == "A" & df$points > 1, ]

# Method 3: Select Rows Based on Value in List
# select rows where team is equal to "A" OR "C"
df[df$team %in% c("A", "C"), ]
