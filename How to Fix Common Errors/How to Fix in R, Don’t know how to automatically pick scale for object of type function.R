# This error occurs when you attempt to create a plot using
# ggplot2 but provide the name of a built-in R function 
# (such as mean, median, max, sample, range, etc.)
# to the aes() argument.

# How to Reproduce the Error
# create data frame
df <- data.frame(Team=c('A', 'B', 'C', 'D'),
                 Mean=c(12, 22, 30, 31))

# view data frame
df

library("ggplot2")

# attempt to create bar plot
# ggplot to create bar plot
ggplot(df, aes(Team, mean)) +
  geom_bar(stat = "identity")

# How to Fix the Error
library("ggplot2")

# create bar plot
ggplot(df, aes(Team, Mean)) + 
  geom_bar(stat = "identity")