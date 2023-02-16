# create data frame
df <- data.frame(team=c("A", "B", "C", "D", "E"),
                 points=c(99, 90, 86, 88, 95),
                 assists=c(33, 28, 31, 39, 34),
                 rebounds=c(30, 28, 24, 24, 28))

# view data frame
df

# select all but the third column
df[, -3]

# select all column except the column with the name "assists"
df[, colnames(df)[colnames(df) != "assists"]]
