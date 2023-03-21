# Example: Group Data by Week in R
# create data frame
df <- data.frame(date=as.Date(c('1/8/2022', '1/9/2022', '2/10/2022', '2/15/2022',
                                '3/5/2022', '3/22/2022', '3/27/2022'), '%m/%d/%Y'),
                 sales=c(8, 14, 22, 23, 16, 17, 23))

# view data frame
df

# add column to show week number
df$week_num <- strftime(df$date, format = "%V")

# VIEW updated frame
df

library("dplyr")

# calculate sum of sales, grouped by week
df %>% 
  group_by(week_num) %>% 
  summarize(total_sales = sum(sales))

# calculate mean of sales, grouped by week 
df %>% 
  group_by(week_num) %>% 
  summarize(mean_sales = mean(sales))
