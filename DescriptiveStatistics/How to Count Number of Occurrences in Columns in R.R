# create data frame
df <- data.frame(player=c('A', 'B', 'C', 'D', 'E', 'F'),
                 team=c('Mavs', 'Mavs', 'Suns', 'Nets', 'Nets', 'Nets'),
                 points=c(20, 22, 26, 30, 30, NA))

# view data frame
df

# count number of occurrences of each team
table(df$team)

# count number of occrrences of each value in "points", including NA occurrences
table(df$points, useNA = "always")

# count number of occurrences of the value 30 in "points" column
length(which(df$points == 30))

# count number of occurrences of the value 30 or 26 in "points" column
length(which(df$points == 30 | df$points == 26))
