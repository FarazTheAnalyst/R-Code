# Example: Group Data by Month in R
# create data frame
df <- data.frame(date=as.Date(c('1/4/2022', '1/9/2022', '2/10/2022', '2/15/2022',
                                '3/5/2022', '3/22/2022', '3/27/2022'), '%m/%d/%Y'),
                 sales=c(8, 14, 22, 23, 16, 17, 23))

# view data frame
df

library('tidyverse')

# groud data by month and sum sales
df %>% 
  group_by(month = lubridate::floor_date(date, "month")) %>% 
  summarize(sum_of_sales = sum(sales))

# group data by month and find max sales
df %>% 
  group_by(month = lubridate::floor_date(date, "month")) %>% 
  summarize(max_of_sales = max(sales))
