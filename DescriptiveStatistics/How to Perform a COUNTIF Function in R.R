# create data frame
data <- data.frame(team=c("Mavs", "Mavs", "Spurs", "Spurs", "Lakers"),
                   points=c(14, NA, 8, 17, 22),
                   rebounds=c(8, 5, 5, 9, 12))

# view data frame
data

# count number of rows where team name equal to "Mavs"
sum(data$team == "Mavs")

# count number or rows  where the team name equal to "Mavs" or "lakers"
sum(data$team == "Mavs" | data$team == "Lakers")

# count number of rows where the team name is not equal to "Lakers"
sum(data$team != "Lakers")

# count number of rows where points is greater than 10
sum(data$points > 10, na.rm = TRUE)

# count number of rows where rebounds is less than or equal to 9
sum(data$rebounds <= 9, na.rm = TRUE)

# count number of rows where points is between 10 and 20
sum(data$points > 10 & data$points < 20, na.rm = TRUE)

# count number of rows where rebounds is between 8 and 10
sum(data$rebounds > 8 & data$rebounds < 10, na.rm = TRUE)









