# define numberic vector
data <- c(4, 6, 6, 7, 8, 9, 12, 13, 14, 15, 15, 18, 22)

# calculate five number summary of data
fivenum(data)

# creating a boxplot with five number summary
boxplot(data)

# create data frame
df <- data.frame(team=c("A", "B", "C", "D", "E", "F", "G", "H"),
                 points=c(99, 90, 86, 88, 95, 87, 85, 89),
                 assists=c(33, 28, 31, 39, 34, 30, 29, 25),
                 rebounds=c(30, 28, 24, 24, 28, 30, 31, 35))

# create fivenum summary of points column
fivenum(df$points)

# create data frame
df <- data.frame(team=c("A", "B", "C", "D", "E", "F", "G", "H"),
                 points=c(99, 90, 86, 88, 95, 87, 85, 89),
                 assists=c(33, 28, 31, 39, 34, 30, 29, 25),
                 rebounds=c(30, 28, 24, 24, 28, 30, 31, 35))

# calculate five number summary of points, assists, and rebounds column
sapply(df[c("points", "assists", "rebounds")], fivenum)






















