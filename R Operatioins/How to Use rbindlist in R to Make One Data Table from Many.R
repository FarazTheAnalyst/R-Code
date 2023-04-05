# Example: Use rbindlist to Make One Data Table
library("data.table")

# create data frames and data tables
data1 <- data.table(team=c('A', 'B', 'C'),
                    points=c(22, 27, 38))

data2 <- data.table(team=c('D', 'E', 'F'),
                    points=c(22, 14, 20))

data3 <- data.frame(team=c('G', 'H', 'I'),
                    points=c(11, 15, 18))

# view data frames and data tables
print(data1)
print(data2)
print(data3)

# define list of objects to bind together
data_list <- list(data1, data2, data3)

# bind together list of objects
big_data <- rbindlist(data_list)

# view result
big_data

# view class of resulting object
class(big_data)

# The Benefit of Using rbindlist
# use rbind to bind together list of objects
do.call("ribind", data_list)

