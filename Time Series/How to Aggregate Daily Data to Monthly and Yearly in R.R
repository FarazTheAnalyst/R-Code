# Occasionally you may want to aggregate daily data to weekly,
# monthly, or yearly data in R.

# Example: Aggregate Daily Data in R
# make this example reproducible
set.seed(0)

# create data frame
df <- data.frame(date = as.Date("2023-12-01") + 0:99,
                 sales = runif(100, 20, 50))

# view first six rows
head(df)

# mean Sales by week
# load necessary packages
library("lubridate")
library("dplyr")

# round dates down to week
df$week <- floor_date(df$date, "week")
# round mean sales by week
df %>% 
  group_by(week) %>% 
  summarise(mean = mean(sales))

# mean sales by month
library("lubridate")
library("dplyr")

# round dates down to month
df$month <- floor_date(df$date, "month")

# find mean sales by month
df %>% 
  group_by(month) %>% 
  summarize(mean = mean(sales))

# mean sales by year
library("lubridate")
library("dplyr")

# round dates down to year
df$year <- floor_date(df$date, "year")

# find mean sale by year
df %>% 
  group_by(year) %>% 
  summarize(mean = mean(sales))





































