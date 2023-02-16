#create data frame
df <- data.frame(team=c('A', 'B', 'C', 'D', 'E', 'F'),
                 points=c(99, 90, 86, 88, 95, 99),
                 assists=c(33, 28, 31, 39, 34, 25),
                 rebounds=c(12, NA, 24, 24, 28, 33))

# view data frame
df

# display total number of rows in data frame
nrow(df)

# dislplay total number of rows in data frame with no NA values
nrow(df[complete.cases(df), ])

# display total number of columns in data frame
ncol(df)

# display dimensions of data frame
dim(df)

# display number of rows of data frame
dim(df)[1]

# display number of columns of data frame
dim(df)[2]





















