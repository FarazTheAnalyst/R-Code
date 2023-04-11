# This error usually occurs when you attempt to create a
# line chart using ggplot2 but the x-axis variable is a factor,
# which can cause issues when connecting the points in the plot.

# How to Reproduce the Error
# create data frame
df <- data.frame(year=factor(c(2017, 2018, 2019, 2020, 2021, 2022)),
                 sales=c(23, 30, 35, 41, 48, 44))

# view data frame
df

library(ggplot2)

# attempt to create line chart
ggplot(df, aes(year, sales)) +
  geom_point() +
  geom_line()

# A scatterplot is produced instead of a line plot because the
# x-axis variable (year) is a factor.

# How to Fix the Error
library(ggplot2)

# create line chart
ggplot(df, aes(year, sales, group=1)) +
  geom_point() +
  geom_line()
