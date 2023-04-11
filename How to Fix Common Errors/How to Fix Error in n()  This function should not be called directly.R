# This error usually occurs when you attempt to use the n() function from the dplyr package, but you happen to have the plyr package loaded 
# after the dplyr package.

# How to Reproduce the Error
# define data frame
df <- data.frame(team=rep(c('A', 'B'), each=5),
                 points=c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20),
                 assists=c(4, 7, 11, 16, 22, 29, 38, 49, 63, 80))

# view data frame
df

library("dplyr")
library("plyr")

# attempt to count rows by team
df %>% 
  group_by(team) %>% 
  summarize(count=n())

# How to Fix the Error

library("dplyr")
library(plyr)

# count rows by team
df %>% 
  group_by(team) %>% 
  dplyr::summarize(count=n())
