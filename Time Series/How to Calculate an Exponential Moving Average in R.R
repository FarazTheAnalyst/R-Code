# An exponential moving average is a type of moving average
# that gives more weight to recent observations, which means it's
# able to capture recent trends more quickly.

# Example: Exponential Moving Average in R
# create data frame
df <- data.frame(period=1:10,
sales=c(25, 20, 14, 16, 27, 20, 12, 15, 14, 19))

# view data frame
df

# load necessary packages
library("pracma")

# create new column to hold 4-day exponentially weighted moving average
df$EWM_4day <- movavg(df$sales, n=4, type = "e")

# view DataFrame
df

library("ggplot2")
library("reshape2")

# melt data into format for easy plotting
df <- melt(df, id.vars = "period", variable.name = "series")
df

# plot sales vs. 4-day exponentially weighted moving average
ggplot(df, aes(period, value)) +
  geom_line(aes(colour = series))
