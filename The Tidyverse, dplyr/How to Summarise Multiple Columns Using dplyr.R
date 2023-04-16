# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'B', 'B', 'B'),
                 points=c(99, 90, 86, 88, 95, 90),
                 assists=c(33, 28, 31, 39, 34, 25),
                 rebounds=c(NA, 28, 24, 24, 28, 19))

# view data frame
df

# Example 1: Summarise All Columns
library(dplyr)

# summarize mean of all columns, grouped by team
df %>% 
  group_by(team) %>% 
  summarise(across(everything(), mean, na.rm=TRUE))

# Example 2: Summarise Specific Columns
library("dplyr")

# summarize mean of points and rebounds, grouped by team
df %>% 
  group_by(team) %>% 
  summarise(across(c(points, rebounds), mean, na.rm=TRUE))


# Example 3: Summarise All Numeric Columns
library("dplyr")

# summarize mean and standard deviation of all numeric columns
df %>% 
  group_by(team) %>% 
  summarise(across(where(is.numeric), list(mean=mean, sd=sd), na.rm=TRUE))



















