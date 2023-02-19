# create data 
data <- data.frame(month=1:15,
                   x=c(13, 15, 16, 15, 17, 20, 22, 24, 25, 26, 23, 24, 23, 22, 20),
                   y=c(22, 24, 23, 27, 26, 26, 27, 30, 33, 32, 27, 25, 28, 26, 28))

# view first six rows
head(data)

# calculate 3-month correlation between sales for x and y
install.packages("zoo")
library("zoo")
rollapply(data, width=3, function(x) cor(x[, 2], x[, 3]), by.column=FALSE)

# calcualte 6-month rolling correlation betweenn sales for x and y
rollapply(data, width=6, function(x) cor(x[, 2],x[, 3]), by.column=FALSE)
