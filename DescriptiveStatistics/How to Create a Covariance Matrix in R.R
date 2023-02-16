# create the data frame
data <- data.frame(math=c(84, 82, 81, 89, 73, 94, 92, 70, 88, 95),
                   science=c(85, 82, 72, 77, 75, 89, 95, 84, 77, 94),
                   history=c(97, 94, 93, 95, 88, 82, 78, 84, 69, 78))

# view data frame
data

# create covariance matrix
cov(data)
