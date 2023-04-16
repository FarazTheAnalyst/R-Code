# create data frame
df <- data.frame(team=c('A', 'A', 'A', 'A', 'B', 'B', 'B', 'B'),
                 points=c(12, 15, 18, 22, 14, 17, 29, 35),
                 assists=c(4, 4, 3, 6, 7, 8, 3, 10))

# view data frame
df

# Example 1: Calculate Standard Deviation of One Variable
library("dplyr")

# calculate standard deviation of points variable
df %>% 
  summarise(sd_points = sd(points, na.rm=TRUE))

# Example 2: Calculate Standard Deviation of Multiple Variables
library(dplyr)

# calculate standard deviation of points and assists variables
df %>% 
  summarise(sd_points = sd(points, na.rm=TRUE),
            sd_assists = sd(assists, na.rm=TRUE))

# Example 3: Calculate Standard Deviation of Multiple Variables,
# Grouped by Another Variable
library("dplyr")

# calculate deviation of points and assists variables
df %>% 
  group_by(team) %>% 
  summarise(sd_points = sd(points, na.rm = TRUE),
            sd_assists = sd(assists, na.rm=TRUE))
