# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'C', 'C', 'C'),
                 points=c(18, 13, 19, 14, 24, 21, 20, 28),
                 assists=c(5, 7, 17, 9, 12, 9, 5, 12))

# view data frame
df

# Example 1: Find First Row that Meets One Criteria
# find first row where team is equal to "B"
df[which(df$team =="B", arr.ind=TRUE)[1], ]

# Example 2: Find First Row that Meets Multiple Criteria
# find first row where points > 15 and assists > 10
df[which(df$points > 15 & df$assists > 10, arr.ind = TRUE)[1], ]

# Example 3: Find First Row that Meets One of Several Criteria
# find first row where points > 15 or assists > 10
df[which(df$points>15 | df$assists>10, arr.ind = TRUE)[1], ]
