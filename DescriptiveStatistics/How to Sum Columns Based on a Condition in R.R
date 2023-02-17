# create data frame
df <- data.frame(conference=c("East", "East", "East", "West", "West", "West"),
                 team=c("A", "A", "A", "B","B", "C"),
                 points=c(11, 8, 10, 6, 6, 5),
                 rebounds=c(7, 7, 6, 9, 12, 8))

# view data frame
df

# sum one column based on one condition
# sum values in column 3(points column) where team is equal to "A"
sum(df[which(df$team=="A"), 3])

# sum values in column 4(rebounds column) where points is greater than 9
sum(df[which(df$point > 9), 4])

# sum one column based on multiple conditions
# sum values in column 3 (points column) where team is "A" and conference is "East"
sum(df[which(df$team=="A" & df$conference=="East"), 3])

# sum one column Based on one of several conditions
# sum values in column 3(points column) where team is "A" or "C"
sum(df[df$team=="A" | df$team=="C", 3])















