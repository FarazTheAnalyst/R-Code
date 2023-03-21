# create data frame
df <- data.frame(date=c('2022-01-03', '2022-02-15', '2022-05-09',
                        '2022-08-10', '2022-10-14', '2022-12-30'),
                 sales=c(130, 98, 120, 88, 94, 100))
# view data frame
df

# Example 1: use zoo package
library("zoo")

# convert date to year/quarter format
df$date <- as.yearqtr(df$date, format = "%Y-%m-%d")

# view updated data frame
df

# Example 2: Use lubridate Package
library("lubridate")
library("dplyr")

# convert date to year/quarter format
df %>% 
  mutate(date = quarter(date, with_year = TRUE))

# convert date to quarter foramt
df %>% 
  mutate(date = quarter(date))
