# In time series analysis, a moving average represents the 
# average value of a certain number of previous periods.

# Example: Calculate Moving Average by Group in R
# create data frame
df <- data.frame(store=rep(c('A', 'B'), each=7),
                 sales=c(4, 4, 3, 5, 6, 5, 7, 4, 8, 7, 2, 5, 4, 6))

# load necessary packages
library("dplyr")
library("zoo")

# calculate 3-day moving average of sales, grouped by store
df %>% 
  group_by(store) %>% 
  mutate(moving_avg3 = rollmean(sales, k=3, fill=NA, align = "right"))
