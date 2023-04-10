# How to Reproduce the Error
# create dta frame
df = data.frame(x = 1:12,
                y = rep(c('1', '2', '3', '4'), times=3))

# view data frame
df

library("ggplot2")

# attempt to create scatterplot with custom y-axis scale
ggplot(df, aes(x, y)) +
  geom_point() +
  scale_y_continuous(limits=c(0, 10))

# check class of y variable
class(df$y)

# How to Fix the Error
# The easiest way to fix this error is to convert the y-axis
# variable to a numeric variable before creating the scatterplot:
library(ggplot2)

# convert y variable to numeric
df$y <- as.numeric(df$y)

# create scatterplot with custom y-axis scale
ggplot(df, aes(x, y)) +
  geom_point() +
  scale_y_continuous(limits=c(0, 10))
