# How to Reproduce the Error
# create data frame
df <- data.frame(day = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 sales = c(8, 8, 7, 6, 7, 8, 9, 12, 14, 18),
                 customers = c(4, 6, 6, 4, 6, 7, 8, 9, 12, 13))

# view data frame
df

library("ggplot2")

# attempt to create plot with two lines
ggplot(df, aes(x = day))
geom_line(aes(y=sales, color="sales")) +
  geom_line(aes(y=customers, color="customers"))

# How to Fix the Error
library("ggplot2")

# create plot with two lines
ggplot(df, aes(x=day)) +
  geom_line(aes(y=sales, color="sales")) +
  geom_line(aes(y=customers, color="customers"))

