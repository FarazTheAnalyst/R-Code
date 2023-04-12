# This error usually occurs when you attempt to use ggplot2
# to plot two data frames at once, but fail to use the data
# argument within the geom_line() function.
# How to Reproduce the Error
# create first data frame
df <- data.frame(date=c(1, 1, 1, 2, 2, 2, 3, 3, 3),
                 hour=c(1, 2, 3, 1, 2, 3, 1, 2, 3),
                 sales=c(2, 5, 7, 5, 8, 12, 10, 14, 13))

# view data frame
head(df)

# create second data frame
df_new <- data.frame(date=c(4, 4, 4, 5, 5, 5),
                     hour=c(1, 2, 3, 1, 2, 3),
                     sales=c(12, 13, 19, 15, 18, 20))

# view data frame
head(df_new)

library("ggplot2")

# attempt to create line chart
ggplot(df, aes(x=hour, y=sales, group=date)) +
  geom_line(color=blue) + 
  geom_line(df_new, aes(x=hour, y=sales, group=date), color="red")

# How to Fix the Error
library(ggplot2)

# create line chart
ggplot(df, aes(x=hour, y=sales, group=date)) +
  geom_line(color="blue") + 
  geom_line(data=df_new, aes(x=hour, y=sales, group=date), color="red")
