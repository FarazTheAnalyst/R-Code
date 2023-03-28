# Method 1: Use the Stack Function in Base R
# create original data frame
data <- data.frame(person=c('A', 'A', 'B', 'B', 'C', 'C'),
                   trial=c(1, 2, 1, 2, 1, 2),
                   outcome1=c(7, 6, 6, 5, 4, 4),
                   outcome2=c(4, 4, 5, 5, 3, 2))

# stack the third and fourth columns
cbind(data[1:2], stack(data[3:4]))

# Method 2: Use the Melt Function from Reshape2
library("reshape2")

# create origianl data frame
data <- data.frame(person=c('A', 'A', 'B', 'B', 'C', 'C'),
                   trial=c(1, 2, 1, 2, 1, 2),
                   outcome1=c(7, 6, 6, 5, 4, 4),
                   outcome2=c(4, 4, 5, 5, 3, 2))

# melt columns of data frame
melt(data, id.vars = c("person", "trial"), variable.name = "outcomes")
