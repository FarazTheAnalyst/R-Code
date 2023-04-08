# Example 1: Format Percentages in a Vector
library(scales)

# create data 
data <- c(.3, .7, .14, .18, .22, .78)

# format numbers as percentages
percent(data, accuracy = 1)

# format numbers as percentages with one decimal place
percent(data, accuracy = 0.1)

# format numbers as percentages with two decimal places
percent(data, accuracy = 0.01)

# load scales() package
library("scales")

# create data frame
df = data.frame(region = c('A', 'B', 'C', 'D'),
                growth = c(.3, .7, .14, .18))

# view data frame
df

# format numbers as percentages in growth column
df$growth <- percent(df$growth, accuracy=1)

# view updated data frame
df

library("scales")

# create data frame
df = data.frame(region = c('A', 'B', 'C', 'D'),
                growth = c(.3, .7, .14, .18),
                trend = c(.04, .09, .22, .25))

# view data frame
df

# format numbers as percentages in growth and trend columns
df[2:3] <- sapply(df[2:3], function(x) percent(x, accuracy=1))

# view updated data frame
df


























