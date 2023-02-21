# create data frame
df <- data.frame(region=c('A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C', 'C'),
                 device=c('X', 'X', 'Y', 'X', 'Y', 'Y', 'X', 'X', 'Y', 'Y'),
                 sales=c(12, 18, 21, 22, 34, 29, 38, 36, 34, 32))

# view data frame
df

# load data dplyr package
# find sum of sales by region
library("dplyr")
df %>% 
  group_by(region) %>% 
  summarize(sum_sales = sum(sales))

# find average sales by region
df %>% 
  group_by(region) %>% 
  summarize(mean_sales = mean(sales))

# find sum of sales by region and devie type
df %>% 
  group_by(region, device) %>% 
  summarize(sum_sales = sum(sales))
