# create data frame
df <- data.frame(team=c("A", "A", "B", "B", "C", "C"),
                 points=c(90, 99, 90, 85, 90, 85),
                 assists=c(33, 33, 31, 39, 34, 34),
                 rebounds=c(30, 28, 24, 24, 28, 28))

# view data frame
df

# find unique values in  "team" column 
unique(df$team)

# find unique values in "points" column
unique(df$points)

# find and sort unique values in "points" column 
sort(unique(df$points))

# find and sort unique values in "points" column
sort(unique(df$points), decreasing = TRUE)

# find and count values in  "points" column
table(df$points)









