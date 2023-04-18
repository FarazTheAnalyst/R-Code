# create data frame
df <- data.frame(store=c('A', 'B', 'A', 'B', 'A', 'B', 'A', 'B'),
                 sales=c(7, 12, 10, 9, 9, 11, 18, 23))

# view data frame
df

library("dplyr")

# calculate lagged sales by group
df %>% 
  group_by(store) %>% 
  mutate(lag1_sales = lag(sales, n=1, order_by = store))
