# In time series analysis, a rolling average represents the
# average value of a certain number of previous periods.

# Example: Calculate Rolling Average in R
# create data frame
df <- data.frame(day=c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
                 sales=c(25, 20, 14, 16, 27, 20, 12, 15, 14, 19))

# view data frame
df

# load necessary packages
library("dplyr")
library("zoo")

# calculate 3-day rolling average of sales
df %>% 
  mutate(avg_sales3 = rollmean(sales, k=3, fill=NA, align = "right"))

# calculate 3-day and 4-day rolling average of sales
df %>% 
  mutate(avg_sales3 = rollmean(sales, k=3, fill = NA, align = "right"),
         avg_sales4 = rollmean(sales, k = 4, fill = NA, align = "right"))
