# Example: Group Data by Hour in R
# create data frame
df <- data.frame(time=as.POSIXct(c('2022-01-01 01:14:00', '2022-01-01 01:24:15',
                                   '2022-01-01 02:52:19', '2022-01-01 02:54:00',
                                   '2022-01-01 04:05:10', '2022-01-01 05:35:09')),
                 sales=c(18, 20, 15, 14, 10, 9))

# view data frame
df

library("dplyr")
library("lubridate")

# group by hours in time column and calculate sum of sales
df %>% 
  group_by(time=floor_date(time, "1 hour")) %>% 
  summarize(sum_sales=sum(sales))

# group by hours in time column and calculate mean of sales
df %>% 
  group_by(time=floor_date(time, "1 hour")) %>% 
  summarize(mean_sales = mean(sales))
