# create dataset
data <- data.frame(quarter=1:15,
                   sales=c(1, 2, 2, 5, 4, 7, 5, 7, 6, 8, 5, 9, 11, 12, 4))

# create new column in dataset that contains cumulative sales
data$cum_sales <- cumsum(data$sales)

# view dataset
data

# how to visualize a cumulative sum in R
plot(data$cum_sales, type = "l", xlab="Quarter", ylab="Cumulative Sales")

# visualization by ggplot2
library("ggplot2")

ggplot(data, aes(x=quarter, y=cum_sales)) +
  geom_line(col = 'purple') +
  labs(x="Quarter", y="Cumulative Sales")
