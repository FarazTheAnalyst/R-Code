# create data frame
df <- data.frame(conf=c('East', 'East', 'East', 'West', 'West', 'West'),
                 points=c(22, 25, 29, 13, 22, 30),
                 rebounds=c(12, 10, 6, 6, 8, 11))

# view data frame
df

# Example 1: Apply Function to Multiple Columns
library("dplyr")

# multiply values in points and rebounds columns by 2
df %>% 
  mutate(across(c(points, assists), function(x) x*2))

# Example 2: Calculate One Summary Statistic for Multiple Columns
library("dplyr")

# calculate mean value of points an rebounds columns
df %>% 
  summarise(across(c(points, rebounds), mean, na.rm=TRUE))

library("dplyr")

# calculate mean value for every numeric column in data frame
df %>% 
  summarise(across(where(is.numeric), mean, na.rm=TRUE))

# Example 3: Calculate Multiple Summary Statistics for Multiple Columns
library("dplyr")

# calculate mean and standard deviation for points and  rebounds columns
df %>% 
  summmarise(across(c(points, rebounds), list(mean=mean, sd=sd), na.rm=TRUE))




















